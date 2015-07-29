#!/bin/bash
sed -i 's/127.0.0.1/'"$NODE_IP"'/g' /emqttd/etc/vm.args
/emqttd/bin/emqttd start
if [ -n ${MASTER+x} ]; then
/emqttd/bin/emqttd_ctl cluster emqttd@$MASTER;
fi
true
