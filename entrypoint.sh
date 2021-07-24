#!/bin/bash
sleep 1

cd /home/container

# 取代啟動參數
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# 啟動伺服器
${MODIFIED_STARTUP}