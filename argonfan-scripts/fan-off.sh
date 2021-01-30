#!/bin/bash
echo 0 | sudo tee /sys/class/hwmon/hwmon2/fan1_speed
echo 0 | sudo tee /sys/class/hwmon/hwmon1/fan1_speed
