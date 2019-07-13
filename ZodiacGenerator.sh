#!/bin/bash


#check year
#check month
#check days
#see if year is leap year. if it is then use february variable with extra day (29th)
#check month
#check what interval of the month the day is a part of to determine what zodiac sign
#input --> 1 23 1975
#output --> Aquarius

read -p "Enter Birthday as shown --> 1 23 1857: " bday
month=`echo $bday | cut -d ' ' -f 1`
day=`echo $bday | cut -d ' ' -f 2`
year=`echo $bday | cut -d ' ' -f 3`

#function ifleapyear {
#    modulus=$(( $1 % 4 ))
#    echo $modulus #This will echo 1
#    if [ $modulus -eq 0 ]
#    then
#    echo Leap Year
#    else
#    echo Not Leap Year
#    fi
#}

#ifleapyear $year


january=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
febuary=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28)
march=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
april=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30)
may=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
june=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30)
july=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
august=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
september=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30)
october=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
november=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30)
december=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)

aries=("`echo ${mar[@]} | cut -d ' ' -f 21-31`" "`echo ${apr[@]} | cut -d ' ' -f 1-19`")
taurus=("`echo ${apr[@]} | cut -d ' ' -f 20-30`" "`echo ${may[@]} | cut -d ' ' -f 1-20`")
gemini=("`echo ${may[@]} | cut -d ' ' -f 21-31`" "`echo ${jun[@]} | cut -d ' ' -f 1-20`")
cancer=("`echo ${jun[@]} | cut -d ' ' -f 21-30`" "`echo ${jul[@]} | cut -d ' ' -f 1-22`")
leo=("`echo ${jul[@]} | cut -d ' ' -f 23-31`" "`echo ${aug[@]} | cut -d ' ' -f 1-22`")
virgo=("`echo ${aug[@]} | cut -d ' ' -f 23-31`" "`echo ${sep[@]} | cut -d ' ' -f 1-22`")
libra=("`echo ${sep[@]} | cut -d ' ' -f 23-30`" "`echo ${oct[@]} | cut -d ' ' -f 1-22`")
scorpio=("`echo ${oct[@]} | cut -d ' ' -f 23-31`" "`echo ${nov[@]} | cut -d ' ' -f 1-21`")
sagittarius=("`echo ${nov[@]} | cut -d ' ' -f 22-30`" "`echo ${dec[@]} | cut -d ' ' -f 1-21`")
capricorn=("`echo ${dec[@]} | cut -d ' ' -f 22-31`" "`echo ${jan[@]} | cut -d ' ' -f 1-19`")
aquarius=("`echo ${jan[@]} | cut -d ' ' -f 20-31`" "`echo ${feb[@]} | cut -d ' ' -f 1-18`")
pisces=("`echo ${feb[@]} | cut -d ' ' -f 19-28`" "`echo ${mar[@]} | cut -d ' ' -f 1-20`")

case $month in
    "1")
        echo january
        ;;
esac
