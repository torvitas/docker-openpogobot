#!/bin/bash
wd=$(pwd)
cd /usr/local/pogobotui
source /usr/local/lib/template.renderer.sh

echo "### Rendering configuration files.."
sed -i "s#http://localhost:8000#${PGBUI_SOCKET_URL:-http://localhost:8000}#g" src/scripts/config.js

cd ${wd}

exec ${@}
