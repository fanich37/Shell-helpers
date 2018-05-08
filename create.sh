#!/bin/sh

BB_USER=bb_username
BB_PASSWORD=bb_password
GH_USER='gh_username'
GH_PASSWORD='gh_password'

if [ $1 ]
	then
		mkdir $1 && cd $1
		if [ $2 ]
			then
				git init
				touch .gitignore
				echo -e ".DS_Store\nnode_modules\ndist" > .gitignore
				case $2 in
					-b)
						curl --user $BB_USER:$BB_PASSWORD https://api.bitbucket.org/1.0/repositories/ --data name=$1 --data is_private=true
						git remote add origin https://$BB_USER@bitbucket.org/$BB_USER/$1.git
						echo Local and Bitbucket repositories are created.
						break
						;;
					-g)
						curl -i -u "$GH_USER:$GH_PASSWORD" -d '{"name": "'$1'"}' https://api.github.com/user/repos
						git remote add origin https://github.com/$GH_USER/$1.git
						echo Local and GitHub repositories are created.
						break
						;;
				esac
		fi
	else
		echo No parameters are given!
fi
