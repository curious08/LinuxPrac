#!/usr/bin/bash

###
#   author : Sumesh
#   version: v1.2
#   this script will demonstrate usage of echo cmd
#   echo [-enE] [arguments]
#   echo -e => backslash escaped character will be interpreted like \n => new line
#   \n =>new line
#   \b =>remove one space back
#   \t =>horzontal tab
#   \v =>vertical tab
#   \a =>sound alert
#   \r =>carrige return
#   \c suppress any further output

echo "One"
echo "Two"

# we can write one line using escape character sequence
echo -e "One\nTwo"
echo -e "One\bTwo"
echo -e "One\tTwo"
echo -e "One\vTwo"
echo -e "One\aTwo"
echo -e "One\rTwo"
echo -e "One\cTwo"
echo -e "One\\\Two"


