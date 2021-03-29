# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    header.rb                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbergs-f <sbergs-f@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/28 18:51:11 by sbergs-f          #+#    #+#              #
#    Updated: 2021/03/28 19:19:56 by sbergs-f         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

load 'helpers/colors.rb'

def printHeader()
  file = File.open('art/header')
  print(file.read.green)
  file.close
end
