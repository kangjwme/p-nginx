#!/bin/ash

echo "啟動 PHP-FPM..."
/usr/sbin/php-fpm7 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "啟動 Nginx..."
/usr/sbin/nginx -c /home/container/nginx/nginx.conf