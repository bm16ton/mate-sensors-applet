#!/bin/bash
echo 66 | sudo tee /sys/class/hwmon/hwmon2/fan1_speed
echo 66 | sudo tee /sys/class/hwmon/hwmon1/fan1_speed
