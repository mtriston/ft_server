# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mtriston <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/01 13:09:59 by mtriston          #+#    #+#              #
#    Updated: 2020/07/08 20:16:42 by mtriston         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

MAINTAINER mtriston@student.21-school.ru

#install all necessary programs
RUN apt -y update && apt -y upgrade
RUN apt -y install  wget           \
					vim            \
					nginx          \
					php-fpm        \
					php-mysql      \
					mariadb-server

#create a root directory
RUN mkdir /var/www/ft_server
RUN chown -R www-data:www-data /var/www/ft_server

COPY ./srcs ./
RUN chmod +x *.sh

#download phpMyAdmin
RUN wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-english.tar.gz
RUN tar xvzf phpMyAdmin-latest-english.tar.gz 
RUN mv phpMyAdmin-*-english /var/www/ft_server/phpMyAdmin
RUN rm phpMyAdmin-latest-english.tar.gz
RUN mv config.inc.php /var/www/ft_server/phpMyAdmin

#download Wordpress
RUN wget https://wordpress.org/latest.tar.gz
RUN tar xvzf latest.tar.gz -C /var/www/ft_server
RUN rm latest.tar.gz
RUN mv wp-config.php /var/www/ft_server/wordpress

#create ssl certificate
RUN openssl req \
            -x509 -nodes -days 30 \
			-subj '/C=RU/L=Moscow/O=School21/CN=Messenger Triston' \
			-newkey rsa:2048 -keyout /etc/ssl/cert.key -out /etc/ssl/cert.crt

#add config for nginx
RUN mv ./localhost /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled
RUN rm /etc/nginx/sites-enabled/default

EXPOSE 80 443

CMD bash start.sh
