# Tiva-web 2.1

Web server for tiva apps.

## Install

Run install script as root.

	#  ./install.sh

## Use

The server checks directory /srv/tiva/static looking for static files. If
there is not static file with searched path, the server checks directory
/srv/tiva/apps looking for cgi scripts.
