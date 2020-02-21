#!/bin/sh

prop=$(xinput | perl -n -e'/Razer Razer Abyssus\s*id=(\d+)/ && print $1,"\n"')
number=$(xinput --list-props 9 | perl -n -e'/Coordinate Transformation Matrix\s*\((\d+)\)/ && print $1,"\n"')
set -x
xinput --set-prop $prop $number 2.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 0.000000, 0.000000, 1.000000;
