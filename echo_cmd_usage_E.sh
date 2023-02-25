#!/usr/bin/bash

###
#   author : Sumesh
#   version: v1.1
#   this script will demonstrate usage of echo cmd
#   echo [-enE] [arguments]
#   echo -E => it will treat escape sequence as normal words 


echo -e "Simple Message\nMessage in other line"

# ignore escape sequence
echo -eE "Simple Message\nMessage in other line"
echo -E "Simple Message\nMessage in other line"


