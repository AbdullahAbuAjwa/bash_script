#!/bin/bash

#### this code for make somthing like include in any programming language #####
shopt -s expand_aliases
alias include='source'
###############################################################################
include /home/abdullah/script/bash_script/moudles/user_add
include /home/abdullah/script/bash_script/moudles/user_del

select var in "useradd" "userdelete" "exit"
do
	case $var in 
		useradd)
			user_add
			;;
		userdelete)
			user_del
			;;
		exit)
			break
			;;
		*)
			echo "The enterd option $var doen't exist"
			;;
	esac
done

