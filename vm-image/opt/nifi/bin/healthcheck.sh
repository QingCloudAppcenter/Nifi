#!/usr/bin/env bash

source "$(dirname $0)"/common.sh
status=`bash -e /opt/nifi/bin/nifi.sh status |grep "Command Apache NiFi is"| awk '{print $9}'`
if [[ $status != "currently" ]]
then
echo NOK
nifiRestart
else
echo OK
fi
