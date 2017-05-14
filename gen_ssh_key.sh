#!/usr/bin/zsh

ssh-keygen -t rsa -b 4096 -C "soomink@kaist.ac.kr"

eval $(ssh-agent -s) | grep -q 'Agent pid'
if [ $? != 0 ]; then
	echo "ssh-agent is currently not working. aborted."
	exit 1
fi

ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub
