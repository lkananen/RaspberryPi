#!/bin/bash
# This file runs all the setup scripts and initializes the system.
# Can be run on a fresh install of Raspian.
#
# Rigths to run the scripts:
chmod +x ./filesystem_upgrade.sh
chmod +x ./basic_apps.sh
chmod +x ./raspotify.sh
#
# Script executions:
./filesystem_upgrade.sh
./basic_apps.sh
./raspotify.sh
