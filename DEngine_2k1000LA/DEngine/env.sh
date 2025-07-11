
export TARGET_TYPE=${TARGET_TYPE:-host}
export TARGET_OS=${TARGET_OS:-linux}
export TARGET_CPU=${TARGET_CPU:-loongson}
export DENGINE_ROOT=/DEngine

#set current path to DENGINE_ROOT
WORK_DIR=`pwd`
if [ ${WORK_DIR} != ${DENGINE_ROOT} ]; then
  ln -sbnv `pwd` ${DENGINE_ROOT}
fi

echo "environment config complete."
