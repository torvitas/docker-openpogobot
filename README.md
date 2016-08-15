# Docker OpenPoGoBot

[![Docker Pulls](https://img.shields.io/docker/pulls/torvitas/openpogobot.svg?maxAge=2592000)]()

This wraps [OpenPoGoBot](https://github.com/OpenPoGo/OpenPoGoBot) in a docker image.
Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/torvitas/pogobot) and is the recommended method of installation.

## Prerequisites

Before you can use the bot, you have to take a few steps in order to access the Google APIs:

1. Create a Google account if you don't already have one
2. Log-in to the [Google Developer Console](https://console.developers.google.com/)
3. Create a new project, name it however you like
4. In **Credentials**, create a new Server API key for the project
5. In your **Dashboard**, enable the
  - 'Google Maps Directions API' and the
  - 'Google Maps Geocoding API'
6. Done!

## Quickstart
```
git clone https://github.com/torvitas/docker-openpogobot.git
cd docker-openpogobot
docker-compose run --rm -e PGB_USER="googleusername" -e PGB_PASSWORD="googlepassword" -e PGB_GOOGLE_API_KEY="googleapikey" pogobot
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
