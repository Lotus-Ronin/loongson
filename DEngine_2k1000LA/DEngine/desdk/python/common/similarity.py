import os, sys
import pickle
import numpy as np
import struct
# from sklearn.metrics.pairwise import cosine_similarity

def typeSize(data_type):
    if (data_type=="int8") or (data_type=="uint8") :
        return 1
    if (data_type=="int16") or (data_type=="uint16"):
        return 2
    if (data_type=="int32") or (data_type=="uint32"):
        return 4     
    if (data_type=="float16"):
        return 2
    if (data_type=="float32"):
        return 4
    pass

def saveInt8Bin(f,buf):
    for data in buf:
        b = struct.pack('b',data)
        f.write(b)

def saveUint8Bin(f,buf):
    for data in buf:
        b = struct.pack('B',data)
        f.write(b)        

def saveFp16Bin(f, buf):
    for data in buf:
        #b = struct.pack('h',data)        
        f.write(data)

def saveBin(f, buf):
    if (buf.dtype=="int8"):
        saveInt8Bin(f,buf)
    if (buf.dtype=="float16"):
        saveFp16Bin(f,buf)
    if (buf.dtype=="uint8"):
        saveUint8Bin(f,buf)
    pass
    
def cosine_similarity(data1, data2):
    v1_d = data1.flatten().astype('float64')
    v2_d = data2.flatten().astype('float64')
    if len(v1_d) != len(v2_d):
        return 0.0
    if np.all(v1_d == v2_d):
        return 1.0
    v1_d[v1_d == np.inf] = np.finfo(np.float16).max
    v2_d[v2_d == np.inf] = np.finfo(np.float16).max
    v1_d[v1_d == -np.inf] = np.finfo(np.float16).min
    v2_d[v2_d == -np.inf] = np.finfo(np.float16).min
    v1_norm = v1_d / np.linalg.norm(v1_d)
    v2_norm = v2_d / np.linalg.norm(v2_d)
    
    sim = np.dot(v1_norm, v2_norm)
    return sim

def folder_similarity(folder1, input2, filelist=None, dtype=np.float16):
    results = []
    if filelist is None:
        filelist = os.listdir(folder1)
        filelist = [(file, dtype) for file in filelist]
    for op_name, dtype, shape in filelist:
        print(op_name, dtype, shape)
        file_name = op_name + "_out0.bin"
        result = {"name":op_name, "dtype":dtype, "shape":shape}
        file_path1 = os.path.join(folder1, file_name)
        if os.path.exists(file_path1):
            data1 = np.fromfile(file_path1, dtype=dtype)
            if isinstance(input2, str):
                if os.path.isdir(input2):
                    file_path2 = os.path.join(input2, file_name)
                    if os.path.exists(file_path2):
                        data2 = np.fromfile(file_path2, dtype=dtype)
                    else:
                        assert f"{file_path2} is not found!"
            elif isinstance(input2, dict):
                data2 = input2[op_name]
            print("data1=", data1)
            print("data2=", data2)
            sim = cosine_similarity(data1, data2)
            result["similarity"] = sim
            results.append(result)
        else:
            print(f"[warnning] {file_path1} is not found!")
    return results


