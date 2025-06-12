#!/bin/bash
if ! ps x | grep -w "6Iod8vRUYINGsUk449o8MY0FgwlEvu7OIdO2z0VKOLs=" | grep -v "bash\|grep" &>/dev/null; then
cd ~/software/tm; dotnet Cli.dll start accept --token "6Iod8vRUYINGsUk449o8MY0FgwlEvu7OIdO2z0VKOLs=" --device-name "SH1" &>/dev/null &
fi
