# Home assistant

## Content
This folder contains a containerized home assistant setup to host on a Raspberry Pi.

## Setup
1. Setup Docker by running `docker-setup.sh`.
2. Setup Home Assistant container. Either of the options:   
    a) Run the steps in `home-assistant-docker-setup.sh`.   
    b) Run the steps in `home-assistant-docker-compose-setup.sh`.

## Files
- [ha/](./ha/) Home assistant configurations. Mounted as a volume by the home assistant container.
  - [configuration.yaml](./ha/configuration.yaml) Home assistant main configurations.
  - [secrets.yaml](./ha/secrets.yaml) Home assistant configuration secrets, tokens, passwords and other confidental settings.
  - [sensors.yaml](./ha/sensors.yaml) Home assistant sensor configurations.
- [.env](./.env) Dotenv file of Docker environment configuration secrets.
- [docker-compose.yml](./docker-compose.yml) Home assistant container setup.
- [docker-setup.sh](./docker-setup.sh) Docker installation script. Required for the use of Docker and related scripts.
- [home-assistant-docker-compose-setup.sh](./home-assistant-docker-compose-setup.sh) (recommended setup) Home assistant docker-compose container setup and deployment script.
- [home-assistant-docker-setup.sh](./home-assistant-docker-setup.sh) (optional setup) Home assistant Docker container setup and deployment script.
- [README.md](./README.md) This readme file.
