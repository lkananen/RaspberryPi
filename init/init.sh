#!/bin/bash
# This file runs all the setup scripts and initializes the system.
# Can be run on a fresh install of Raspian.
#
./sys/filesystem_upgrade.sh
./sys/basic_apps.sh
./sys/cleanup.sh
