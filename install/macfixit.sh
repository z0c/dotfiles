echo 'Fix console font size'
if [ ! -f /etc/vconsole.conf ]; then
	sudo sh -c  "echo 'FONT=sun12x22' > /etc/vconsole.conf"
fi
