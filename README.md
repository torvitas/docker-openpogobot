# Docker OpenPoGoBot

[![Docker Pulls](https://img.shields.io/docker/pulls/torvitas/openpogobot.svg?maxAge=2592000)]()

This wraps [OpenPoGoBot](https://github.com/OpenPoGo/OpenPoGoBot) in a docker image.

## Quickstart
```
git clone https://github.com/OpenPoGo/OpenPoGoBot.git
cd OpenPoGoBot
docker-compose run --rm -e PGB_USER="googleusername" -e PGB_PASSWORD="googlepassword" pogobot
```
## Configuration

| Environment Variable | Corresponding Flag |
|-----------|-----------|
| PGB_AUTH_SERVICE | --auth-service |
| PGB_USER | --username |
| PGB_PASSWORD | --password |
| PGB_LOCATION | --location |
| PGB_GOOGLE_API_KEY | --gmapkey |
| PGB_GOOGLE_DIRECTIONS | --google-directions |
| PGB_INCUBATION_FILL | --incubation-fill |
| PGB_INCUBATION_USE_ALL | --incubation-use-all |
| PGB_INCUBATION_RESTRICT | --incubation-restrict |
| PGB_INCUBATION_PRIORITY | --incubation-priority |
| PGB_CP | --combat-power |
| PGB_MAX_STEPS | --max-steps |
| PGB_INITIAL_TRANSFER | --initial-transfer |
| PGB_RECYCLE_ITEMS | --recycle-items |
| PGB_POKEMON_POTENTIAL | --pokemon-potential |
| PGB_LOCATION_CACHE | --location-cache |
| PGB_DISTANCE_UNIT | --distance-unit |
| PGB_EVOLVE_POKEMON | - |
| PGB_EVOLVE_FILTER | - |
| PGB_ITEM_FILTER | - |
| PGB_NAVIGATOR | - |
| PGB_NAVIGATOR_WAYPOINTS | - |
| PGB_NAVIGATOR_CAMPSITE | - |
| PGB_EXCLUDE_PLUGINS | --exclude-plugins |
