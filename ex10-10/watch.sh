#!/bin/zsh

users=$*
users=${users// /\\|}

who | sort > prev
while true
do
    sleep 1
    who | sort > curr
    loggout=`comm -23 prev curr | grep "$users"`
    login=`comm -13 prev curr | grep "$users"`
    if [ ${#loggout} -gt 0 ]
    then
        echo "loggout out: "
        echo $loggout
    fi
    if [ ${#login} -gt 0 ]
    then
        echo "logged in: "
        echo $login
    fi
    mv curr prev
done
