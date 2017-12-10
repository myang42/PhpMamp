#!/bin/sh
echo $PATH | egrep "/goinfre/myang/php/mamp/common" > /dev/null
if [ $? -ne 0 ] ; then
PATH="/goinfre/myang/php/mamp/git/bin:/goinfre/myang/php/mamp/varnish/bin:/goinfre/myang/php/mamp/sqlite/bin:/goinfre/myang/php/mamp/php/bin:/goinfre/myang/php/mamp/mysql/bin:/goinfre/myang/php/mamp/apache2/bin:/goinfre/myang/php/mamp/common/bin:$PATH"
export PATH
fi
echo $DYLD_FALLBACK_LIBRARY_PATH | egrep "/goinfre/myang/php/mamp/common" > /dev/null
if [ $? -ne 0 ] ; then
DYLD_FALLBACK_LIBRARY_PATH="/goinfre/myang/php/mamp/git/lib:/goinfre/myang/php/mamp/varnish/lib:/goinfre/myang/php/mamp/varnish/lib/varnish:/goinfre/myang/php/mamp/varnish/lib/varnish/vmods:/goinfre/myang/php/mamp/sqlite/lib:/goinfre/myang/php/mamp/mysql/lib:/goinfre/myang/php/mamp/apache2/lib:/goinfre/myang/php/mamp/common/lib:/usr/local/lib:/lib:/usr/lib:$DYLD_FALLBACK_LIBRARY_PATH"
export DYLD_FALLBACK_LIBRARY_PATH
fi

TERMINFO=/goinfre/myang/php/mamp/common/share/terminfo
export TERMINFO
##### GIT ENV #####
GIT_EXEC_PATH=/goinfre/myang/php/mamp/git/libexec/git-core/
export GIT_EXEC_PATH
GIT_TEMPLATE_DIR=/goinfre/myang/php/mamp/git/share/git-core/templates
export GIT_TEMPLATE_DIR
GIT_SSL_CAINFO=/goinfre/myang/php/mamp/common/openssl/certs/curl-ca-bundle.crt
export GIT_SSL_CAINFO

##### VARNISH ENV #####
		
      ##### SQLITE ENV #####
			
##### GHOSTSCRIPT ENV #####
GS_LIB="/goinfre/myang/php/mamp/common/share/ghostscript/fonts"
export GS_LIB
##### IMAGEMAGICK ENV #####
MAGICK_HOME="/goinfre/myang/php/mamp/common"
export MAGICK_HOME

MAGICK_CONFIGURE_PATH="/goinfre/myang/php/mamp/common/lib/ImageMagick-6.9.8/config-Q16:/goinfre/myang/php/mamp/common/"
export MAGICK_CONFIGURE_PATH

MAGICK_CODER_MODULE_PATH="/goinfre/myang/php/mamp/common/lib/ImageMagick-6.9.8/modules-Q16/coders"
export MAGICK_CODER_MODULE_PATH

##### FONTCONFIG ENV #####
FONTCONFIG_PATH="/goinfre/myang/php/mamp/common/etc/fonts"
export FONTCONFIG_PATH
SASL_CONF_PATH=/goinfre/myang/php/mamp/common/etc
export SASL_CONF_PATH
SASL_PATH=/goinfre/myang/php/mamp/common/lib/sasl2 
export SASL_PATH
LDAPCONF=/goinfre/myang/php/mamp/common/etc/openldap/ldap.conf
export LDAPCONF
##### PHP ENV #####
PHP_PATH=/goinfre/myang/php/mamp/php/bin/php
export PHP_PATH
##### MYSQL ENV #####

##### APACHE ENV #####

##### FREETDS ENV #####
FREETDSCONF=/goinfre/myang/php/mamp/common/etc/freetds.conf
export FREETDSCONF
FREETDSLOCALES=/goinfre/myang/php/mamp/common/etc/locales.conf
export FREETDSLOCALES
##### CURL ENV #####
CURL_CA_BUNDLE=/goinfre/myang/php/mamp/common/openssl/certs/curl-ca-bundle.crt
export CURL_CA_BUNDLE
##### SSL ENV #####
SSL_CERT_FILE=/goinfre/myang/php/mamp/common/openssl/certs/curl-ca-bundle.crt
export SSL_CERT_FILE
OPENSSL_CONF=/goinfre/myang/php/mamp/common/openssl/openssl.cnf
export OPENSSL_CONF
OPENSSL_ENGINES=/goinfre/myang/php/mamp/common/lib/engines
export OPENSSL_ENGINES


. /goinfre/myang/php/mamp/scripts/build-setenv.sh
