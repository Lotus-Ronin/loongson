#include "download.h"

void trace(int signo)
{
    int j, nptrs;
    void *buffer[SIZE];
    char **strings;
    char cName[32];
    prctl(PR_GET_NAME, cName);
    printf("Comm: %s, PID:%ld, signo: %d\n", cName, gettid(), signo);
    nptrs = backtrace(buffer, SIZE);
    printf("backtrace() returned %d addresses\n", nptrs);
    /* The call backtrace_symbols_fd(buffer, nptrs, STDOUT_FILENO)
     *               would produce similar output to the following: */
    strings = backtrace_symbols(buffer, nptrs);
    if (strings == NULL) {
        perror("Backtrace:");
        exit(EXIT_FAILURE);
    }
    for (j = 0; j < nptrs; j++)
        printf("%s\n", strings[j]);
    free(strings);
    if (SIGSEGV == signo || SIGQUIT == signo ||SIGABRT == signo) {
        signal(signo, SIG_DFL);
        raise(signo);
    }
}


#ifndef USE_DP1000_PLATFORM

using namespace de::dcmi;
void callback_func(de::dcmi::DevId dev_id, de::dcmi::EventType message_code, const std::string &message){
    printf("-------- dev id %d  callback messagecode %d ---------\n", dev_id, message_code);
    abort();
}

//"/DEngine/desdk/archive/mini-pcie-ram/file/firmware/config.ini"
int usbboot_download(int dev_id, const char* config_path){
  using namespace de::dcmi;
  const int PROBE_USB_DEV_TIMES = 20 ;    //循环探测次数
  const int PROBE_USB_DEV_WAIT = 2;          //2 seconds
  std::cout << "download:\n";
  std::vector<VersionCfg>config;
  std::vector<DevId>configId;
  std::vector<de::ErrorCode> result;
  DevStatus status;
  int probe_times = 0;
  int devid;
  int ret;

  VersionCfg cfg = { dev_id, config_path, 0, 0 };
  config.emplace_back(cfg);
  configId.emplace_back(cfg.dev_id);

  ret = de::dcmi::Download(config, result);
  if(ret < 0){
    for(std::vector<de::ErrorCode>::iterator it=result.begin(); it!=result.end(); it++){
      std::cout << "result=" << std::hex << *it << std::dec << "\n";
    }
    return -1;
  }

  for(std::vector<DevId>::iterator it=configId.begin(); it!=configId.end(); it++){
    while(1){
      std::this_thread::sleep_for(std::chrono::seconds(PROBE_USB_DEV_WAIT));
      probe_times++;
      devid = (*it);
      de::dcmi::GetDevStatus(devid, status);
      if(probe_times == PROBE_USB_DEV_TIMES){
       break;
      }
      if(DEVICE_ONLINE == status){
       std::cout << "download devid=" << devid << ", status=" << std::hex << status << std::dec << ", line="<< __LINE__ << "\n";
       break;
      }
    }
    if(probe_times == PROBE_USB_DEV_TIMES){
      return -1;
    }
  }
  return 0;
}
#endif

