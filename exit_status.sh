Exit status of a command
===========================
#!/bin/bash

each linux cmd returns a status when it is executed

status => 0 if cmd executed successfully
staus  => non zero like 1 or 127 if cmd not executed successfully

you can see your exit status cmd using 
>echo $?

>ls

>echo $?
0
>asdfasdf
>echo $?
127

if you want to save the exit staus on one variable
>ls

>cmd_rc=$?
>echo cmd_rc
0

cat demo.txt | grep name
if name is present echo $? will give 0 
it means name is present in demo.txt thats why it has given cmd is suucessfully executed
if cmd is wrong then it will return 2

example
127 => cmd not found
1   => valid cmd but failed during execution
2   => incorrect cmd usage

How to execute a shell script from another shell script?
how to access variable which are defined in another file?

I want to write shellscript to start and stop following services

httpd
start_httpd.sh	stop_httpd.sh

tomcat
start_tomcat.sh	stop_tomcat.sh

start_httpd.sh
#!/bin/bash
sudo systemctl start httpd

stop_httpd.sh
#!/bin/bash
sudo systemctl stop httpd

now tomcat
to check the status tomcat is running or not
ps -ef | grep tomcat

how to search a directory
sudo find / -name tomcat

start_tomcat.sh
#!/usr/bin/bash
#give the complete path of startup.sh
/home/sumesh/tomcat8/bin/startup.sh

stop_tomcat.sh
#!/usr/bin/bash
/home/sumesh/tomcat8/bin/shutdown.sh

now i have 4shell script
start_httpd.sh
stop_httpd.sh
start_tomcat.sh
stop_tomcat.sh

now i want to start httpd and tomcat with one single shell script
vi start_httpd_tomcat.sh

#!/usr/bin/bash
#if your script is in same directory where all scripts are there
./start_httpd.sh
./start_tomcat.sh

#other wise give complete path

vi stop_httpd_tomcat.sh
#!/bin/bash
/home/sumesh/work_dir/stop_httpd.sh
/home/sumesh/work_dir/stop_tomcat.sh

how to access variable which are defined in another file?

vi one.sh
#!/usr/bin/bash
name="firs shell script"

vi two.sh
#!/bin/bash
./one.sh #if i run like this it will create a new shell and it will execute the script
echo $name

if you want to use one shell script variable to another shell script you have to source

#!/bin/bash
source ./one.sh
echo $name


vi myvariable
x=10
y=20

#!/bin/bash
source ./one.sh
source ./myvariable

echo $name
echo "The x is: $x"
echo "The y is: $y"

./two.sh

#without using source we can use . if it is in same location then directly mention otherwise give complete path
#use source or .

#!/bin/bash
. ./one.sh
. ./myvariable


VARIABLE CONCEPT
variable concept 
===================

define declare a variable

x=2 #dont provide space on either side of = symbol
x = 2#invalid
x= 2#invalid
x =2#invalid
x=2#valid

use echo $x or echo "$x" or echo "${x}"

always try to use echo "$x" best practice
sometimes in expresion we have to use curly braces time will tell us

y=5.6
m=shell
n="shell scripting"

suppose you want to assign cmd output to variable
earlier we see redirection 
$ls > listfile.txt
files will store in your harddisk
varibles will store in ram memory

d=$(date)
echo "$d"

no need to decalre datatype

default variable value is always empty


types of variable
1 system defined variable
2 user defined varible

to know the system defined varible you have to run one command env
$env

example of system defined varible

echo "$UID"
echo "$USER"
echo "$HOME"












