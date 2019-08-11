#!/bin/bash


#Add Cusps and meanings to Zodoiac signs
#If user was born on a cusp then notify them


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

clear
while [ 1 ]
do
read -p "Enter Birthday as shown --> MONTH DAY YEAR: " bday
month=`echo $bday | cut -d ' ' -f 1`
day=`echo $bday | cut -d ' ' -f 2`
year=`echo $bday | cut -d ' ' -f 3`
output="0"

case $month in
    "1" | "January" | "january")
	if echo "${aquarius[0]}" | grep -qw "$day"
	then
	    echo "Aquarius"
	else
	    echo "Capricorn"
	fi
        ;;
    "2" | "February" | "february")
        if echo "${pisces[0]}" | grep -qw "$day"
        then
            echo "Pisces"
        else
            echo "Aquarius"
        fi
        ;;
    "3" | "March" | "march")
        if echo "${aries[0]}" | grep -qw "$day"
        then
            echo "Aries"
        else
            echo "Pisces"
        fi
        ;;
    "4" | "April" | "april")
        if echo "${taurus[0]}" | grep -qw "$day"
        then
            echo "Taurus"
        else
            echo "Aries"
        fi
        ;;
    "5" | "May" | "may")
        if echo "${gemini[0]}" | grep -qw "$day"
        then
            echo "Gemini"
        else
            echo "Taurus"
        fi
        ;;
    "6" | "June" | "june")
        if echo "${cancer[0]}" | grep -qw "$day"
        then
            echo "Cancer"
        else
            echo "Gemini"
        fi
        ;;
    "7" | "July" | "july")
        if echo "${leo[0]}" | grep -qw "$day"
        then
            echo "Leo"
        else
            echo "Cancer"
        fi
        ;;
    "8" | "August" | "august")
        if echo "${virgo[0]}" | grep -qw "$day"
        then
            echo "Virgo"
        else
            echo "Leo"
        fi
        ;;
    "9" | "September" | "september")
        if echo "${libra[0]}" | grep -qw "$day"
        then
            echo "Libra"
        else
            echo "Virgo"
        fi
        ;;
    "10" | "October" | "october")
        if echo "${scorpio[0]}" | grep -qw "$day"
        then
            echo "Scorpio"
        else
            echo "Libra"
        fi
        ;;
    "11" | "November" | "november")
        if echo "${sagittarius[0]}" | grep -qw "$day"
        then
            echo "Sagittarius"
        else
            echo "Scorpio"
        fi
        ;;
    "12" | "December" | "december")
        if echo "${capricorn[0]}" | grep -qw "$day"
        then
            echo "Capricorn"
        else
            echo "Sagittarius"
        fi
        ;;
esac
done
