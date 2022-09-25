#!/bin/sh

##############################################################
##############################################################
##  sparta.sh                                               ##
##############################################################
##                                                          ##
##  This Is S P A R T A ! ! !                               ##
##  A shell script that does nothing but "This Is Sparta!"  ##
##                                                          ##
##############################################################
##   Author: Megaf                                          ##
##      Git: https://www.github.com/Megaf/sparta            ##
##     Date: 25/09/2022                                     ##
##  Version: 0.1                                            ##
##  License: GPL 3.0                                        ##
##############################################################
##############################################################

blink_speed="0.1"
interval_time="1"
sparta_times="5"

__wipe() { printf "\r"; printf "                             "; printf "\r" ; }
__wait() { sleep "$interval_time"; }
__blink() { sleep "$blink_speed"; }
__cycle() { __wait; __wipe; }
__exclamation() { printf "\e[1m"; printf " ! ! ! !"; }
__spartaaaa() { __blink; __wipe; __wipe; __blink; printf "\e[1m"; printf "S P A R T A A A A A"; }
__aaaa() { __blink; printf "\e[1m"; printf " A"; }

clear
printf "\e[2m"; printf "This"
__cycle
printf "\e[22m"; printf "is"
__cycle
runs="0"; while [ "$runs" -le "$sparta_times" ]; do __spartaaaa; __exclamation; runs="$((runs+1))"; done
__spartaaaa
runs="0"; while [ "$runs" -le "$sparta_times" ]; do __aaaa; runs="$((runs+1))"; done; __exclamation; printf "\n"

unset -v blink_speed interval_time sparta_times runs
unset -f __wipe __wait __blink __cycle __exclamation __spartaaaa __aaaa
