#include "de_node.h"
#include "de_dcmi_api.h"

#include <execinfo.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <sys/prctl.h>
#include <sys/syscall.h>
#define SIZE 1000

#if !defined(gettid)
# define gettid() syscall(__NR_gettid)
#endif 
#include <chrono>

#ifndef USE_DP1000_PLATFORM
 void callback_func(de::dcmi::DevId dev_id, de::dcmi::EventType message_code, const std::string &message);
  
 int usbboot_download(int dev_id, const char* config_path);
 
 void trace(int signo);
#endif