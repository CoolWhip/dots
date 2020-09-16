#!/bin/sh

col() {
    printf ''
    for i in 1 2 3 4 5 6; do 
    	printf '\033[9%sm▅▅' "$i"
    done
    printf '\033[0m\n'
}

: "${info:=col}"

for i in $info; do
    case $i in
    	n) echo;;
    	col) col;;
    esac
done

