export alias ll='ls -l'

echo "unset proxy variables"
unset HTTP_PROXY
unset HTTPS_PROXY

if [ -f ~/.m2/settings.xml ]; then
	echo "remove settings maven file specific to orange"
	rm ~/.m2/settings.xml
fi

gem source -r http://gems-support.beta.kermit.rd.francetelecom.fr/

rhc server use openshift

cf login --skip-ssl-validation -a https://api.run.pivotal.io -u herve.darritchon@gmail.com

