# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mtriston <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/01 13:09:59 by mtriston          #+#    #+#              #
#    Updated: 2020/07/04 23:00:32 by mtriston         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

MAINTAINER mtriston@student.21-school.ru

RUN apt -y update && apt -y upgrade

RUN apt -y install wget nginx 

COPY ./srcs ./

CMD bash start.sh
