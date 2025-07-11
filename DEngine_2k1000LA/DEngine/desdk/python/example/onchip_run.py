import sys, cv2
import de
import os
import logging
import multiprocessing
import json

import numpy as np
from de import rpc
from de.contrib import util
from user_struct import  *
from nn import nn_deploy as nn
from enum import Enum
import datetime
import json

from collections import namedtuple
from net_bin_analys import *

class InputType(Enum):
    IMAGE = 0
    DATA = 1

def print_analysis_info(batch, time_info, model_info_json_path=None):

    # "实际运行的NNP核数"
    if batch >= 4:
        real_core_count = 4
    else:
        real_core_count = batch

    time_total = float(time_info["model_time"])
    cyc_nnp = float(time_info["nnp_time"])
    cyc_dsp = float(time_info["dsp_time"])
    cyc_crgh = float(time_info["crgh_time"])
    cyc_sched = float(time_info["sched_time"])
    cyc_kcf = float(time_info["kcf_time"])
    cyc_total = cyc_nnp + cyc_dsp + cyc_crgh + cyc_sched + cyc_kcf

    time_nnp = time_total * cyc_nnp / cyc_total
    time_dsp = time_total * cyc_dsp / cyc_total
    time_crgh = time_total * cyc_crgh / cyc_total
    time_sched = time_total * cyc_sched / cyc_total
    time_kcf = time_total * cyc_kcf / cyc_total

    nnp_flops = 0

    if model_info_json_path is not None and os.path.exists(model_info_json_path) :
        with open(model_info_json_path, 'r') as fp:
            js = json.load(fp)
            fp.close()
        if 'NNP_GOPs' in js : 
            nnp_flops = js['NNP_GOPs']
    
    batch_nnp_flops = nnp_flops * batch
    nnp_use_ratio = batch_nnp_flops / time_nnp / real_core_count * 4 / 1.344 * 100
    fps = batch / time_total * 1000

    print("\n\033[42m----------------------------Info------------------------------------------\n")
    print('{:20}{:22}{}'.format("Name", "Time(millisecond)", "Percent"))
    print('{:20}{:20}'.format("time_total", str(time_total)))
    percent = "{:8.2f}".format(100 * time_nnp / time_total)
    print('{:20}{:20}{}%'.format("time_nnp", str(time_nnp), percent))
    percent = "{:8.2f}".format(100 * time_dsp / time_total)
    print('{:20}{:20}{}%'.format("time_dsp", str(time_dsp), percent))
    percent = "{:8.2f}".format(100 * time_crgh / time_total)
    print('{:20}{:20}{}%'.format("time_crgh", str(time_crgh), percent))
    percent = "{:8.2f}".format(100 * time_sched / time_total)
    print('{:20}{:20}{}%'.format("time_sched", str(time_sched), percent))
    percent = "{:8.2f}".format(100 * time_kcf / time_total)
    print('{:20}{:20}{}%'.format("time_kcf", str(time_kcf), percent))

    print()
    if model_info_json_path != None :
        print('{:20}{}'.format("batch", str(batch)))
        print('{:20}{}'.format("nnp_GOPs", str(nnp_flops)))
        percent = "{:3.2f}".format(nnp_use_ratio)
        print('{:20}{}%'.format("nnp_use_ratio", percent))
        print('{:20}{}'.format("fps", str(fps)))

    print("--------------------------------------------------------------------------\033[0m\n")
    sys.stdout.flush()

def predict(model, model_path, indatas, layer_analysis, batch):
    
    #设置模型的输入
    model.set_input(indatas[0])
    #设置batch
    model.batch_num = 1
        
    #配置1表示batch4 分到两个dsp执行，0为单个dsp执行
    model.dsp_split = 1
    #执行模型
    print("model is running...", flush=True)
    model.run()
    
    data_out = model.get_outputs()
    result_path = model_path + '/result'
    if not os.path.exists(result_path):
        os.mkdir(result_path)

    # 打印结果输出
    print(f"[runonchip] predict result: data_out len={len(data_out)}")
    result_path = os.path.join(model_path, "result")
    if not os.path.exists(result_path):
        os.makedirs(result_path)
    for i, data in enumerate(data_out):
        print(f"data_out[{i}], shape={data.shape}, dtype={data.dtype}")
        file_name_prefix = result_path + '/chip_out_' + str(i)
        #保存为文本格式
        data.tofile(file_name_prefix + '.txt', "\n")
        #保存为二进制格式
        data.tofile(file_name_prefix + '.bin')
    
    #比对数据 
    from common.similarity import cosine_similarity
    for i, data in enumerate(data_out):
        tvm_fixed_out_path = os.path.join(result_path, "tvm_fixed_out_" + str(i) + ".bin")
        if os.path.exists(tvm_fixed_out_path):
            out_ref = np.fromfile(tvm_fixed_out_path, dtype=data.dtype)
            similarity = cosine_similarity(data, out_ref)
            print(f"[runonchip] chip vs fixed output tensor [{i}] similarity={similarity}", flush=True)
        else:
            print(f"[runonchip] chip vs fixed output tensor [{i}] compare failed. {tvm_fixed_out_path} not found.", flush=True)
            similarity = 0
    

    time_info, layer_time = model.profile()

    layer_info = get_layer_info(model_path + "/net.bin")

    LayerTimeInfo = namedtuple('LayerTimeInfo', ['layerNum', 'blockCycle', 'layer_name'])
    layer_time_info = []

    print(f"layer num is {len(layer_info)}, layer_time num is {len(layer_time)}")
    print('[layerNum, blockCycle, layer_name]')
    for i in range(len(layer_info)):
        time = float(int(layer_time[i].blockCycle / 24)) / 1000 # ms, ck time clk is 24M
        layer_time_info.append(LayerTimeInfo(i, time, layer_info[i]))
        x = [i, time, layer_info[i]]
        print(x)

    model_info_json_path = os.path.join(model_path, "model_info.json")
    if not os.path.exists(model_info_json_path):
        model_info_json_path = None
    print_analysis_info(batch=1, time_info=time_info, model_info_json_path=model_info_json_path)

def onchip_run(model_path, indatas, layer_analysis, batch):
 
    if os.environ.get('TARGET_CH') == "net":
        print("Try to connect using net.")
        f = open("/DEngine/net.cfg", 'r')
        net_cfg = f.read()
        f.close()
        a = net_cfg.split(':')
        ip = a[0]
        port = int(a[1])
        print("connect to {}:{}".format(ip, port))
        remote = nn.device_init(0, ip, port)
    else:
        print("Try to connect using usb.")
        remote = nn.device_init(0)
    sdk = nn.NNDeploy(remote)

    #加载模型, 注意，如果两次加载不同的模型，文件名不能相同
    model = sdk.load_host(model_path + "/net.bin", model_path +"/model.bin", batch_max = max(batch))
    print("model load complete.\n", flush=True)

    data = sdk.to_ndarray(data=indatas[0]['data'], img_format=indatas[0]['type'], shapes=indatas[0]['shape'])
    #data = sdk.data_to_ndarray(data=indatas[0]['data'], type_code=de.TypeCode.UINT, bits=8, shape_code=de.ShapeCode.NDHW, shapes=indatas[0]['shape'])
    
    predict(model=model, model_path=model_path, indatas=[data], layer_analysis=layer_analysis, batch=batch)

    #卸载模型
    sdk.un_load(model)
    print("model unload complete.\n", flush=True)