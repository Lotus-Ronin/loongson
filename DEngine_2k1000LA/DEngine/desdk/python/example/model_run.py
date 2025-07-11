import sys, os, re
import configparser

from onchip_run import *
from common.types import *
from common.funcs import *

import logging
logging.basicConfig(level=logging.DEBUG)

config = configparser.ConfigParser()
inifile = sys.argv[1]
inipath = os.path.split(os.path.abspath(inifile))[0]

common_section = 'common'

keyCommonMustBeSet = ['target', 'model_input_count', 'model_input1_dims', 'model_input1_format', 'netbin_folder_path']

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

def checkBoolValue(key, section) :
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

checkIniFile(inifile)
config.read(inifile, encoding='utf-8')
inipath = os.path.split(os.path.abspath(inifile))[0]

# 兼容老版本配置
if not config.has_option('common', 'target'):
    from model_run_old import model_run_old
    model_run_old(inifile=inifile)
    exit()

checkKeyExist(common_section, keyCommonMustBeSet)
checkKeyExist('resize', ['resize_en'])

# [common]配置解析
model_input1_path = None
layer_analysis = False
dec_onchip = False

model_input_names = []
model_input_count = config.getint(common_section, 'model_input_count')
for n in range(model_input_count) :
    keyname = 'model_input' + str(n + 1) + '_name' 
    if config.has_option(common_section, keyname):
        model_input_names.append(config.get(common_section, keyname))
    else:
        print("\033[41mmodel_input_count is {}, but have not key named \"{}\", please check!\033[0m".format(model_input_count, keyname))
        compileFailAndExit()

model_input1_dims = config.getint(common_section, 'model_input1_dims')
model_input1_shape = []
for n in range(model_input1_dims) :
    keyname = 'model_input1_shape' + str(n + 1)
    if config.has_option(common_section, keyname):
        model_input1_shape.append(config.getint(common_section, keyname))
    else:
        print("\033[41mmodel_input_dims is {}, but have not key named \"{}\", please check!\033[0m".format(model_input1_dims, keyname))
        compileFailAndExit()

model_input1_dtype = config.get(common_section, "model_input1_dtype")
model_input1_format = config.get(common_section, "model_input1_format")

if config.has_option(common_section, 'model_input1_path'):
    model_input1_path = decodePath(inipath, config.get(common_section, 'model_input1_path'))
    checkFileExist('model_input1_path', model_input1_path)
    
netbin_folder_path = os.path.join(inipath, config.get(common_section, 'netbin_folder_path'))
netbin_folder_name = os.path.splitext(os.path.basename(inifile))[0]
net_bin_path = os.path.join(netbin_folder_path, netbin_folder_name)
if not os.path.exists(net_bin_path):
    os.makedirs(net_bin_path)

if config.has_option(common_section, 'layer_analysis'):
    checkBoolValue('layer_analysis', common_section)
    layer_analysis = config.getboolean(common_section, 'layer_analysis')

# [resize]配置解析
checkBoolValue('resize_en', 'resize')
resize_en = config.getboolean('resize', 'resize_en')

print("\n\033[42m--------------------------------------------Run Config-----------------------------------------------------\n")
print("\n[input]")
print("model_input_count\t" + str(model_input_count))
print("model_input_names\t" + str(model_input_names))
print("model_input1_shape\t" + str(model_input1_shape))
print("model_input1_dtype\t" + str(model_input1_dtype))
print("model_input1_format\t" + str(model_input1_format))
print("model_input1_path\t" + str(model_input1_path))
print("\n[common]")
print("layer_analysis\t\t" + str(layer_analysis))
print("net_bin_path\t\t" + os.path.abspath(net_bin_path))
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
            if model_input1_shape[1] == 1: # 目前只支持c=1和3
                data['type'] = de.PixelFormat.DE_PIX_FMT_GRAY8
            else:
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
    onchip_run(model_path=net_bin_path, indatas=indatas, layer_analysis=layer_analysis, batch=[1])
except:
    print('\n\033[5;41mMODEL_RUN_FAIL\033[0m\n\n', flush=True)
    raise

print('\n\033[5;42mMODEL_RUN_SUCCESS\033[0m\n\n', flush=True)

