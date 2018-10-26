export alias ll='ls -l'

export HTTP_PROXY=http://127.0.0.1:3128/
export HTTPS_PROXY=http://127.0.0.1:3128/
echo "proxy env variables set."

#if [ ! -f ~/.m2/settings.xml ]; then
	cp -p ~/.m2/settings-orange.xml  ~/.m2/settings.xml
	echo "orange maven configuration file is set."
#fi

gem source -a http://gems-support.kermit.rd.francetelecom.fr/

rhc server use kermit

cf login --skip-ssl-validation -a https://api.nd-cfapi.itn.ftgroup -u ahdi7503

