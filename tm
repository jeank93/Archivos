#!/bin/bash
if ! ps x | grep -w "6Iod8vRUYINGsUk449o8MY0FgwlEvu7OIdO2z0VKOLs=" | grep -v "bash\|grep" &>/dev/null; then
  cd ~/bin; ./dotnet ~/software/tm/Cli.dll start accept --token "6Iod8vRUYINGsUk449o8MY0FgwlEvu7OIdO2z0VKOLs=" --device-name "SH4" &>/dev/null &
  echo "started $(date)" >> ~/software/cron/tm.log
fi
