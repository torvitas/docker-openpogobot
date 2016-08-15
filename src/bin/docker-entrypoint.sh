#!/bin/bash
wd=$(pwd)
cd /usr/local/pogobot
source env/bin/activate
source /usr/local/lib/template.renderer.sh

export LD_LIBRARY_PATH=$(pwd):$LD_LIBRARY_PATH

echo "### Rendering config.json"
render /usr/local/etc/pogobot.config.json.template -- > /usr/local/etc/pogobot.config.json
cat /usr/local/etc/pogobot.config.json

## web server plugin is broken, so this has no effect, yet.
echo "### Rendering userdata.js"
render /usr/local/etc/pogobot.userdata.js.template -- > /usr/local/pogobot/web/config/userdata.js
cat /usr/local/pogobot/web/config/userdata.js

cd ${wd}

exec ${@}
