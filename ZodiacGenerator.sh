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
february=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28)
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

aries=("`echo ${march[@]} | cut -d ' ' -f 21-31`" "`echo ${april[@]} | cut -d ' ' -f 1-19`")
taurus=("`echo ${april[@]} | cut -d ' ' -f 20-30`" "`echo ${may[@]} | cut -d ' ' -f 1-20`")
gemini=("`echo ${may[@]} | cut -d ' ' -f 21-31`" "`echo ${june[@]} | cut -d ' ' -f 1-20`")
cancer=("`echo ${june[@]} | cut -d ' ' -f 21-30`" "`echo ${july[@]} | cut -d ' ' -f 1-22`")
leo=("`echo ${july[@]} | cut -d ' ' -f 23-31`" "`echo ${august[@]} | cut -d ' ' -f 1-22`")
virgo=("`echo ${august[@]} | cut -d ' ' -f 23-31`" "`echo ${september[@]} | cut -d ' ' -f 1-22`")
libra=("`echo ${september[@]} | cut -d ' ' -f 23-30`" "`echo ${october[@]} | cut -d ' ' -f 1-22`")
scorpio=("`echo ${october[@]} | cut -d ' ' -f 23-31`" "`echo ${november[@]} | cut -d ' ' -f 1-21`")
sagittarius=("`echo ${november[@]} | cut -d ' ' -f 22-30`" "`echo ${december[@]} | cut -d ' ' -f 1-21`")
capricorn=("`echo ${december[@]} | cut -d ' ' -f 22-31`" "`echo ${january[@]} | cut -d ' ' -f 1-19`")
aquarius=("`echo ${january[@]} | cut -d ' ' -f 20-31`" "`echo ${february[@]} | cut -d ' ' -f 1-18`")
pisces=("`echo ${february[@]} | cut -d ' ' -f 19-28`" "`echo ${march[@]} | cut -d ' ' -f 1-20`")

case $month in
    "1")
	if echo "${aquarius[0]}" | grep -qw "$day"
	then
	    echo "Aquarius"
	else
	    echo "Capricorn"
	fi
        ;;
    "2")
        if echo "${pisces[0]}" | grep -qw "$day"
        then
            echo "Pisces"
        else
            echo "Aquarius"
        fi
        ;;
    "3")
        if echo "${aries[0]}" | grep -qw "$day"
        then
            echo "Aries"
        else
            echo "Pisces"
        fi
        ;;
    "4")
        if echo "${taurus[0]}" | grep -qw "$day"
        then
            echo "Taurus"
        else
            echo "Aries"
        fi
        ;;
    "5")
        if echo "${gemini[0]}" | grep -qw "$day"
        then
            echo "Gemini"
        else
            echo "Taurus"
        fi
        ;;
    "6")
        if echo "${cancer[0]}" | grep -qw "$day"
        then
            echo "Cancer"
        else
            echo "Gemini"
        fi
        ;;
    "7")
        if echo "${leo[0]}" | grep -qw "$day"
        then
            echo "Leo"
        else
            echo "Cancer"
        fi
        ;;
    "8")
        if echo "${virgo[0]}" | grep -qw "$day"
        then
            echo "Virgo"
        else
            echo "Leo"
        fi
        ;;
    "9")
        if echo "${libra[0]}" | grep -qw "$day"
        then
            echo "Libra"
        else
            echo "Virgo"
        fi
        ;;
    "10")
        if echo "${scorpio[0]}" | grep -qw "$day"
        then
            echo "Scorpio"
        else
            echo "Libra"
        fi
        ;;
    "11")
        if echo "${sagittarius[0]}" | grep -qw "$day"
        then
            echo "Sagittarius"
        else
            echo "Scorpio"
        fi
        ;;
    "12")
        if echo "${capricorn[0]}" | grep -qw "$day"
        then
            echo "Capricorn"
        else
            echo "Sagittarius"
        fi
        ;;
esac
