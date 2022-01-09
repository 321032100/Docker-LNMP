#!/bin/bash
# @auther <wangyaxiandev@gmail.com>

/usr/sbin/init
/usr/sbin/crond
echo "info: starting php-fpm.."
sed -i '/display_errors/d' /etc/php.ini
sed -i '/error_reporting/d' /etc/php.ini
echo "error_reporting  =  E_ALL">>/etc/php.ini
echo "display_errors = Off">>/etc/php.ini
/usr/sbin/php-fpm -c /etc/php.ini -y /etc/php-fpm.conf
tail -f /dev/null
