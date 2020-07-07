# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mtriston <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/01 13:09:59 by mtriston          #+#    #+#              #
#    Updated: 2020/07/07 20:22:45 by mtriston         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

MAINTAINER mtriston@student.21-school.ru

RUN apt -y update && apt -y upgrade

RUN apt -y install  wget           \
					vim            \
					nginx          \
					php-fpm        \
					php-mysql      \
					mariadb-server

RUN mkdir /var/www/ft_server
RUN chown -R www-data /var/www/*
RUN chmod -R 755 /var/www/*

COPY ./srcs ./

RUN openssl req \
            -x509 -nodes -days 30 \
			-subj '/C=RU/L=Moscow/O=School21/CN=localhost' \
			-newkey rsa:2048 -keyout /etc/ssl/cert.key -out /etc/ssl/cert.crt

RUN mv ./localhost /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled
RUN rm /etc/nginx/sites-enabled/default

RUN wget https://wordpress.org/latest.tar.gz
RUN tar xvzf latest.tar.gz -C /var/www/ft_server
RUN rm latest.tar.gz

CMD bash start.sh
