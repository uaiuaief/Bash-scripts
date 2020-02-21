#!/bin/sh

prop=$(xinput | grep -Po "Razer Razer Abyssus\s*id=(\d+)" | sed 's/Razer Razer Abyssus\s*id=//g');
number=$(xinput --list-props $prop | grep "Coordinate Transformation Matrix (142)" | grep -Po "\(\d+" | sed 's/(//g');

set -x
xinput --set-prop $prop $number 2.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 0.000000, 0.000000, 1.000000;
