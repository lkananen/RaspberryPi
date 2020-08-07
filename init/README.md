# Initialization scripts
Running the scripts in this folder sets up my Raspbian setup.  
To run everything you just need to run command:  
```./init.sh```  
and everything will be set up for your fresh installation of Raspian.

## Requirements
- Raspberry Pi OS >= Release: June 2019

## Directory structure
```
 root
 ├── sys
 |    ├── basic_apps.sh
 |    ├── cleanup.sh
 |    └── filesystem_upgrade.sh
 ├── ui
 |    └── install_xfce.sh
 ├── web
 |    ├── create_basic_web_server.sh
 |    └── create_basic_wp.sh
 ├── README.md
 └── init.sh
```

## TODO
The plan is to attach all the sripts to the `init.sh` for easy setup. Current status (mark when done):
- [x] ~~system scripts~~
- [ ] UI setup
- [ ] web server setup

# FAQ
## Permission errors
In case of inadequate permissions, run `chmod +x <filename>` for the neccessary filenames to add execute permissions.
