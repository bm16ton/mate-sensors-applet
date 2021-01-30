#!/bin/bash
echo 33 | sudo tee /sys/class/hwmon/hwmon2/fan1_speed
echo 33 | sudo tee /sys/class/hwmon/hwmon1/fan1_speed
