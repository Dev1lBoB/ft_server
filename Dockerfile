# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wpersimm <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/24 18:02:33 by wpersimm          #+#    #+#              #
#    Updated: 2021/07/18 11:12:14 by wpersimm         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN		apt-get update && apt-get install -y curl nginx mariadb-server php-mysql php-fpm sox

WORKDIR	/var/www/

RUN		curl -O https://ru.wordpress.org/latest-ru_RU.tar.gz && tar vfx latest-ru_RU.tar.gz && rm -rf latest-ru_RU.tar.gz

RUN		curl -O https://files.phpmyadmin.net/phpMyAdmin/4.9.7/phpMyAdmin-4.9.7-all-languages.tar.gz && tar vfx phpMyAdmin-4.9.7-all-languages.tar.gz && rm -rf phpMyAdmin-4.9.7-all-languages.tar.gz

COPY	/srcs/wp-config.php wordpress

WORKDIR	/../../etc/nginx

COPY	./srcs/sc.sh .
COPY	./srcs/nginx.conf .
COPY	./srcs/beep.wav .
COPY	./srcs/index.sh .

EXPOSE	80 443

RUN		openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout arbidol.key -out arbidol.crt -subj "/C=RF/ST=TATARSTAN/L=KAZAN/O=21S/CN=WPERSIMM"

CMD		bash sc.sh
