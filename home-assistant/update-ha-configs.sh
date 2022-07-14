#!/bin/bash
#
# Creates backups and applies the new config yaml files.
#
# Note! Before running, verify these paths to be correct:

this_folder=`dirname $(readlink -f $0)`         # Modify this only if relative path changes!
time_now=`date +%s`                             # Current UNIX time in seconds from 1.1.1970

ha_dev_dir=$this_folder/ha                      # Home assistant development dir
ha_dir=${HOME}/ha                               # Home assistant server mounted dir
backups_main_dir=${HOME}/ha-backups             # Home assistant backup dir
this_backup_dir=$backups_main_dir/$time_now      # Subdir for this backup (prevents overwrites)

##############################################################################
# Backup

# Creates the dir if it does not exist
if [ -d $backups_main_dir ]
then
  :
else
  mkdir $backups_main_dir
fi
if [ -d $this_backup_dir ]
then
  echo "Warning! Overwriting!"
  echo "Dir already exists: $this_backup_dir"
else
  mkdir $this_backup_dir
fi

echo
echo "Creating backups from:"
echo $ha_dir
echo "to:"
echo $this_backup_dir

echo
echo "Copying..."
cp $ha_dir/*.yaml $this_backup_dir/
echo "Done copying!"

##############################################################################
# Update

echo
echo "Applying new yaml files from:"
echo $ha_dev_dir
echo "to:"
echo $ha_dir

echo
echo "Copying..."
sudo cp $ha_dev_dir/*.yaml $ha_dir/
echo "Done copying!"

echo

