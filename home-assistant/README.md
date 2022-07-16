# Home assistant

## Content
This folder contains a containerized home assistant setup to host on a Raspberry Pi.

## Setup
1. Setup Docker by running [docker-setup.sh](./docker-setup.sh).

2. Set secrets to [.env](./.env) and [ha/secrets.yaml](./ha/secrets.yaml).   
    a) Long lived access token to home assistant can be generated under home assistant profiles.   
    b) Network keys must be 16-byte hexadecimal strings. (E.g. Hexadecimal 0xF1 0xA6 is entered as "F1A6".) A simple way to generate random keys is by running the following command:   
        `tr -dc A-F0-9 < /dev/urandom | head -c 32 ; echo`
        
3. Setup Home Assistant container. Either of the options:   
    a) (Recommended) Run the steps in [home-assistant-docker-compose-setup.sh](./home-assistant-docker-compose-setup.sh).
    b) (Optional) Run the steps in [home-assistant-docker-setup.sh](./home-assistant-docker-setup.sh).   

4. Deploy changes (and create automatic backups) with [update-ha-configs.sh](./update-ha-configs.sh).


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
- [update-ha-configs.sh](./update-ha-configs.sh) Deploys the [ha/](./ha/) development directory configurations to the Home Assistant mounted path.

## Debugging

- Container status list:   
  `docker ps`
  
- Containers can be connected with:   
  `docker exec -it <CONTAINER_ID> /bin/bash`

## Other

### Screen reader
In case the screen reader gets turned on automatically during startup, it can be disabled in the following way:   
a) One time: Press caps lock + S   
b) Permanently: Modify file `/etc/xdg/autostart/orca-autostart.desktop` and comment out line `Exec=orca`.   
