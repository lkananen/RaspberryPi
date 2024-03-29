# Smart home hub
Collection of my smart home control center setup & server hosting.

----------

## Badges

  [![Release](https://img.shields.io/github/release-date/lkananen/RaspberryPi)](https://github.com/lkananen/RaspberryPi)
  [![Latest commit](https://img.shields.io/github/last-commit/lkananen/RaspberryPi)](https://github.com/lkananen/RaspberryPi/commits/master)
  [![License](https://img.shields.io/github/commit-activity/y/lkananen/RaspberryPi)](https://github.com/lkananen/RaspberryPi/commits)
  [![Tags](https://img.shields.io/github/v/tag/lkananen/RaspberryPi)](https://github.com/lkananen/RaspberryPi/tags)
  
  [![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
  [![Sponsored](https://img.shields.io/badge/chilicorn-sponsored-brightgreen.svg?logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAA4AAAAPCAMAAADjyg5GAAABqlBMVEUAAAAzmTM3pEn%2FSTGhVSY4ZD43STdOXk5lSGAyhz41iz8xkz2HUCWFFhTFFRUzZDvbIB00Zzoyfj9zlHY0ZzmMfY0ydT0zjj92l3qjeR3dNSkoZp4ykEAzjT8ylUBlgj0yiT0ymECkwKjWqAyjuqcghpUykD%2BUQCKoQyAHb%2BgylkAyl0EynkEzmkA0mUA3mj86oUg7oUo8n0k%2FS%2Bw%2Fo0xBnE5BpU9Br0ZKo1ZLmFZOjEhesGljuzllqW50tH14aS14qm17mX9%2Bx4GAgUCEx02JySqOvpSXvI%2BYvp2orqmpzeGrQh%2Bsr6yssa2ttK6v0bKxMBy01bm4zLu5yry7yb29x77BzMPCxsLEzMXFxsXGx8fI3PLJ08vKysrKy8rL2s3MzczOH8LR0dHW19bX19fZ2dna2trc3Nzd3d3d3t3f39%2FgtZTg4ODi4uLj4%2BPlGxLl5eXm5ubnRzPn5%2Bfo6Ojp6enqfmzq6urr6%2Bvt7e3t7u3uDwvugwbu7u7v6Obv8fDz8%2FP09PT2igP29vb4%2BPj6y376%2Bu%2F7%2Bfv9%2Ff39%2Fv3%2BkAH%2FAwf%2FtwD%2F9wCyh1KfAAAAKXRSTlMABQ4VGykqLjVCTVNgdXuHj5Kaq62vt77ExNPX2%2Bju8vX6%2Bvr7%2FP7%2B%2FiiUMfUAAADTSURBVAjXBcFRTsIwHAfgX%2FtvOyjdYDUsRkFjTIwkPvjiOTyX9%2FAIJt7BF570BopEdHOOstHS%2BX0s439RGwnfuB5gSFOZAgDqjQOBivtGkCc7j%2B2e8XNzefWSu%2BsZUD1QfoTq0y6mZsUSvIkRoGYnHu6Yc63pDCjiSNE2kYLdCUAWVmK4zsxzO%2BQQFxNs5b479NHXopkbWX9U3PAwWAVSY%2FpZf1udQ7rfUpQ1CzurDPpwo16Ff2cMWjuFHX9qCV0Y0Ok4Jvh63IABUNnktl%2B6sgP%2BARIxSrT%2FMhLlAAAAAElFTkSuQmCC)](http://spiceprogram.org/oss-sponsorship)

<a href="https://www.buymeacoffee.com/laurikananen" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

----------

# Table of Contents
- [Smart home hub](#smart-home-hub)
- [Badges](#badges)
- [Table of Contents](#table-of-contents)
- [Project description](#project-description)
- [Technical documents](#technical-documents)
  - [Project content](#project-content)
- [Dependencies](#dependencies)

----------

# Project description

This project consists of my Home Assistant smart home setup (powered by the Jinja2 templating engine), sensor device configurations and Raspberry Pi hosting server initialization scripts.


# Technical documents
## Project content

Project structure separates the server setup to individually encapsulated components.

```
./
├── home-assistant/                                      # Home assistant main setup
|    |
|    ├── ha/                                             # HA control scripts
|    |    |
|    |    ├── ui/                                        # HA dashboards
|    |    |    └── ...
|    |    |
|    |    └── *.yaml                                     # HA definitions
|    |
|    ├── docker-compose.yml                              # Containerized HA
|    ├── docker-setup.sh                                 # First time Docker setup script.
|    ├── home-assistant-docker-compose-setup.sh          # (depricated) Dockerized setup startup script.
|    ├── home-assistant-docker-setup.sh                  # (depricated) Individual HA Docker container startup script.
|    └── update-ha-configs.sh                            # Full deployment. Dockerized setup startup & backup script.
|
├── init/                                                # Raspbian customization & initial setup
|    └── ...
|
├── speedtest/                                           # Network speed testing
|    └── ...
|
├── .gitignore
├── LICENCE
└── README.md
```

# Dependencies
List of dependencies:
- [Grafana official dashboard container](https://hub.docker.com/r/grafana/grafana)
- [Home Assistant official smart home container: homeassistant/home-assistant](https://hub.docker.com/r/homeassistant/home-assistant)
- [InfluxDB official timeseries database container](https://hub.docker.com/_/influxdb)
- [Material Design icons](https://materialdesignicons.com/tag/community)
- [Speedtest network measurement container](https://hub.docker.com/r/robinmanuelthiel/speedtest)
- [Z-wave JavaScript server container](https://hub.docker.com/r/kpine/zwave-js-server)

# Licence

See the separate [LICENCE](./LICENCE) file.
