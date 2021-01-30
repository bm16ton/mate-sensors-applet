#!/bin/bash
echo 100 | sudo tee /sys/class/hwmon/hwmon2/fan1_speed
echo 100 | sudo tee /sys/class/hwmon/hwmon1/fan1_speed
