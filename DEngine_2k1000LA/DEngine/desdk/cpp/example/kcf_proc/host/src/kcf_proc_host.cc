#include <iostream>
#include <fstream>
#include "de_c_type.h"
#include "de_cv_api.h"
#include "de_ndarray.h"
#include "de_base_api.h"
#include "de_packed_func.h"
#include "download.h"

int kcf_test() {
	de::Device::GetFunc(0, "de.example.kcf_process")();					
	return 0;
}

void* load_library() {
	void* handle = de::Device::LoadLib(0,"host:/DEngine/desdk/cpp/example/kcf_proc/dev/lib/libkcf_proc.so");
	return handle;
}

int unload_library(void* handle) {
	de::Device::UnLoadLibHandle(0,handle);
}
int main(int argc, char** argv) {
	signal(SIGSEGV, trace);
    signal(SIGABRT, trace);
  
    //启动方式 0: boot from emmc  1:boot from usb
    int bootmode = 0; 

    if (argc > 1) {
        bootmode = atoi(argv[1]);  
    }
    if (bootmode == 1) {
        usbboot_download(0,"/DEngine/desdk/archive/mini-pcie-ram/file/firmware/config.ini");
        system("sleep 30");
    }
    
    using namespace de::dcmi;
    de::dcmi::Init(1);
    std::vector<de::ErrorCode> results;
    std::vector<XferCmdCfg> cmds;
    XferCmdCfg cmd = {0,"mkdir -p /root/data/track_test",-1};
    cmds.emplace_back(cmd);
    de::dcmi::SendCommand(cmds, results);
    
    std::vector<XferFileCfg> fcfgs;
    XferFileCfg fcfg1 = {0,"/DEngine/data/1080p/track0.nv12.yuv","/root/data/track_test/track0.nv12.yuv",-1};
    XferFileCfg fcfg2 = {0,"/DEngine/data/1080p/track1.nv12.yuv","/root/data/track_test/track1.nv12.yuv",-1};
    XferFileCfg fcfg3 = {0,"/DEngine/data/1080p/track2.nv12.yuv","/root/data/track_test/track2.nv12.yuv", -1};
    fcfgs.emplace_back(fcfg1);
    fcfgs.emplace_back(fcfg2);
    fcfgs.emplace_back(fcfg3);
    de::dcmi::SendFile(fcfgs, results);
    

	void* handle = load_library();
	kcf_test();

    XferFileCfg fcfg4 = {0,"/root/data/track_test/track1_crop0_836x914.nv12.yuv","/DEngine/data/image_test/track1_crop0_836x914.nv12.yuv",-1};
	fcfgs.emplace_back(fcfg4);
	de::dcmi::ReceiveFile(fcfgs,results);
	unload_library(handle);

	return 0;
}