import sys, os, re
import configparser
config = configparser.ConfigParser()

from onchip_run import *
from common.types import *
from common.funcs import *

common_section = 'common'
run_section = 'run'

keyRunMustBeSet = ['dec_onchip', 'netbin_folder_path']
keyCommonMustBeSet = ['input_shape_n', 'input_shape_c', 'input_shape_h', 'input_shape_w']

def runFailAndExit() :
    print('\n\033[5;41mMODEL_COMPILE_FAIL\033[0m')
    sys.stdout.flush()
    os._exit(0)

def checkIniFile(filename) :
    if not os.path.exists(filename):
        print("\033[41m \"{FileName}\" is no exist, please check!\033[0m".format(FileName=filename))
        runFailAndExit()

def checkKeyExist(Section, KeySet, Message=None) :
    for Key in KeySet :
        if not config.has_option(Section, Key):
            if Message == None :
                print("\033[41mINI file have not key named \"{KeyName}\", please check!\033[0m".format(KeyName=Key))
            else:
                print("\033[41mINI file have not key named \"{KeyName}\" {Message}, please check!\033[0m".format(KeyName=Key, Message=Message))
            runFailAndExit()

def checkBoolValue(section, key) :
    boolstring = config.get(section, key)
    if (boolstring.lower() != 'true') and (boolstring.lower() != 'false') :
        print("\033[41m\"{KeyName}\" should be True or False, please check!\033[0m".format(KeyName=key))
        runFailAndExit()

def checkFileExist(key, filename) :
    if not os.path.exists(filename):
        print("\033[41m \"{key}\": \"{FileName}\" is no exist, please check!\033[0m".format(key=key, FileName=filename))
        runFailAndExit()

def decodePath(base, src):
    param = re.match('\$\{.*\}', src)
    if param is None:
        return os.path.join(base, src)
    else:
        split1 = param.string.split('${')
        path_prefix = split1[0]
        split2 = split1[1].split('}')
        path_suffix = split2[1]
        config_key_name = split2[0]
        config_key_content = config.get(common_section, config_key_name)
        if len(path_prefix) == 0:
            rel_path = config_key_content + '/' + path_suffix
        else:
            rel_path = path_prefix + '/' + config_key_content + '/' + path_suffix
        rel_path = rel_path.replace('//', '/')
        path = os.path.abspath(os.path.join(base, rel_path))
        if not os.path.exists(path):
            print("\033[41m \"{path}\": is no exist, please check!\033[0m".format(path=path))
            compileFailAndExit()
        return path

def model_run_old(inifile):

    checkIniFile(inifile)
    config.read(inifile, encoding='utf-8')
    inipath = os.path.split(os.path.abspath(inifile))[0]

    checkKeyExist(common_section, keyCommonMustBeSet)
    checkKeyExist(run_section, keyRunMustBeSet)

    # [common]配置解析
    model_input1_dims = 4
    input_shape_n = config.getint(common_section, 'input_shape_n')
    input_shape_c = config.getint(common_section, 'input_shape_c')
    input_shape_h = config.getint(common_section, 'input_shape_h')
    input_shape_w = config.getint(common_section, 'input_shape_w')
    model_input1_shape = [input_shape_n, input_shape_c, input_shape_h, input_shape_w]
    model_input1_dtype = 'uint8'

    # [run]配置解析
    model_input1_path = None
    layer_analysis = False

    if config.has_option(run_section, 'netbin_folder_path'):
        netbin_folder_path = os.path.join(inipath, config.get(run_section, 'netbin_folder_path'))
    
    if config.has_option(run_section, 'img_path'):
        model_input1_path = decodePath(inipath, config.get(run_section, 'img_path'))

    checkBoolValue(run_section, 'dec_onchip')
    dec_onchip = config.getboolean(run_section, 'dec_onchip')

    model_info_json_path = os.path.join(netbin_folder_path, "model_info.json")
    if not os.path.exists(model_info_json_path):
        model_info_json_path = None

    checkBoolValue('compile', 'resize_en')
    resize_en = config.getboolean('compile', 'resize_en')

    print("\n\033[42m--------------------------------------------Run Config-----------------------------------------------------\n")
    print("\n[old config]")
    print("\n[input]")
    print("model_input1_shape\t" + str(model_input1_shape))
    print("model_input1_dtype\t" + str(model_input1_dtype))
    print("model_input1_path\t" + str(model_input1_path))
    print("\n[common]")
    print("layer_analysis\t\t" + str(layer_analysis))
    print("netbin_folder_path\t\t" + os.path.abspath(netbin_folder_path))
    print("dec_onchip\t\t" + str(dec_onchip))
    print("\n[resize]")
    print("resize_en\t\t" + str(resize_en))
    print("\n---------------------------------------------------------------------------------------------------------------\033[0m\n")
    sys.stdout.flush()

    # 准备测试输入数据，格式为['dtype':dtype,'shape':shape,'data':data,'type':type]
    indatas = []
    # 目前推理仅支持单输入
    data = {}

    if model_input1_path is None:
        data['type'] = de.PixelFormat.DE_PIX_FMT_NONE
        data['data'] = model_path + "/data.bin"
        data['shape'] = model_input1_shape
        data['dtype'] = model_input1_dtype
        print(f"[runonchip] use data.bin, shape={nd0.shape}")
    else:
        # 打开一副jpeg图片，并转为标准输入格式
        if dec_onchip:
            data['type'] = de.PixelFormat.DE_PIX_FMT_NONE
            data['data'] = bytearray(open(model_input1_path, "rb").read())
            data['shape'] = [data['data'].size]
            data['dtype'] = model_input1_dtype
        else:
            data['data'] = get_indata(model_input1_path, model_input1_shape, model_input1_dtype, True)
            if resize_en:
                data['type'] = de.PixelFormat.DE_PIX_FMT_RGB888_PLANE
                data['shape'] = [model_input1_shape[2], model_input1_shape[3]]
                data['dtype'] = model_input1_dtype
            else:
                data['type'] = de.PixelFormat.DE_PIX_FMT_NONE
                data['shape'] = [data['data'].size]
                data['dtype'] = model_input1_dtype
            print(f"[runonchip] use file {model_input1_path}")

    print(f"[runonchip] indata type={type(data['data'])}, format={data['type']}, shape={data['shape']}, dtype={data['dtype']}, size={data['data'].size}")

    indatas.append(data)

    # imread:BGR, HWC
    # img = cv2.imread(test_data_path)
    # img = cv2.resize(img, (227, 227), interpolation=cv2.INTER_LINEAR)
    # img = np.expand_dims(img, 0)
    # img = np.swapaxes(img, 1, 3)
    # img = np.swapaxes(img, 2, 3)
    # data = np.array(img.astype('uint8'))

    try:
        onchip_run(model_path=netbin_folder_path, indatas=indatas, layer_analysis=layer_analysis, batch=[1])
    except:
        print('\n\033[5;41mMODEL_RUN_FAIL\033[0m\n\n', flush=True)
        raise

    print('\n\033[5;42mMODEL_RUN_SUCCESS\033[0m\n\n', flush=True)
