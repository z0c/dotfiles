if [ ! -f /etc/vconsole.conf ]; then
	echo 'Set console font size'
	sudo sh -c  "echo 'FONT=sun12x22' > /etc/vconsole.conf"
fi
