#!/usr/bin/env bash

# VARIABLES
SCRIPTS=extras/servertools/scripts
PY3=/home/bobrock/venvs/stools/bin/python3

# LOG ANALYSIS
#0 */4 * * *         $PY3    $HOME/$SCRIPTS/log_reader.py
#32 3 20 * *         $PY3    $HOME/$SCRIPTS/log_remover.py -lvl debug
## PIHOLE

## MYSQL
#30 6 * * *             $PY3    $HOME/$SCRIPTS/grafana/grafana.py
# SYS DATA COLLECTION
*/2 * * * *             $PY3    $HOME/$SCRIPTS/net/machine-connected.py -lvl debug
0 */3 * * *             $PY3    $HOME/$SCRIPTS/net/speedtest-logger.py -lvl debug
## ENV DATA COLECTION
#*/10 * * * *           $PY3    $HOME/$SCRIPTS/temps/ecobee_temps.py
## HOME AUTOMATION
*/10 03-22 * * *        $PY3    $HOME/$SCRIPTS/camera/amcrest_notify_zone.py -lvl debug
5 23 * * *              $PY3    $HOME/$SCRIPTS/camera/amcrest_nighttime.py -lvl debug
## SLACK NOTIFICATION/SIGNALING
# Run Oct - March
#20 19 * 10-12,1-3 *    $PY3    $HOME/$SCRIPTS/temps/frost_warning.py
#17 16 * * 1-5          $PY3    $HOME/$SCRIPTS/temps/significant_temp_change_warning.py
#*/10 * * * *           $PY3    $HOME/$SCRIPTS/temps/severe_weather_check.py
#15 */4 * * *           $PY3    $HOME/$SCRIPTS/slackbot/slack_logger.py

# Vpulse Automation
#40 03 * * * export DISPLAY=:0; $PY3 $HOME/$SENSORS/vpulse/vpulse_auto.py -lvl debug
