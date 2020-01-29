install_systemd:
	cp bin/saas /usr/bin/saas
	cp misc/saas.service /etc/systemd/system/saas.service
	systemctl enable saas.service
	systemctl start saas.service
