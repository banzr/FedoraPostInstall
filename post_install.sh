#!/bin/bash

### Calls on dependencies

sudo -c
'nohup bash InstallApps.sh &
nohup bash InstallRacket.sh &
nohup bash InstallIntelliJ.sh &
nohup bash ChangeWallpaper.sh &'

