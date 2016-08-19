#!/bin/bash
wd=$(pwd)
cd /usr/local/pogobot
source env/bin/activate
source /usr/local/lib/template.renderer.sh

export LD_LIBRARY_PATH=$(pwd):$LD_LIBRARY_PATH

echo "### Rendering configuration files.."
rm -rf config/config.yml.example config/plugins/*
render /usr/local/templates/pogobot.config.yml.template -- > /usr/local/pogobot/config/config.yml
cat /usr/local/pogobot/config/config.yml > /usr/local/pogobot/data/current_config.yml
render /usr/local/templates/pogobot.egg_incubator.yml.template -- > /usr/local/pogobot/config/plugins/egg_incubator.yml
render /usr/local/templates/pogobot.evolve_pokemon.yml.template -- > /usr/local/pogobot/config/plugins/evolve_pokemon.yml
render /usr/local/templates/pogobot.recycle_items.yml.template -- > /usr/local/pogobot/config/plugins/recycle_items.yml
render /usr/local/templates/pogobot.transfer_pokemon.yml.template -- > /usr/local/pogobot/config/plugins/transfer_pokemon.yml
render /usr/local/templates/pogobot.socket.yml.template -- > /usr/local/pogobot/config/plugins/socket.yml
cat /usr/local/pogobot/config/plugins/*.yml > /usr/local/pogobot/data/current_plugin_config.yml
echo "done, the active configuration has been logged to ./data/"

cd ${wd}

exec ${@}
