# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_env.rb                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbergs-f <sbergs-f@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/28 16:59:38 by sbergs-f          #+#    #+#              #
#    Updated: 2021/03/28 21:25:59 by sbergs-f         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

load 'helpers/header.rb'

printHeader()

unless File.exists?(".env")
  env = File.open(".env", "w")

  puts "Input your UID: "
  uid = gets
  puts "Input your Secret: "
  secret = gets

  env.puts "UID=#{uid}"
  env.puts "SECRET=#{secret}"



  env.close
end


#UID=e75f0c55f0c689a735d0191fc63f5e261bc6c39acfbd18fc2e38d0b43750497c
#SECRET=66387b205210fbf8a36bef393beecef2fb0b9e6a3f021d6b0f8e512d349aa783
#CAMPUSID=22
#MEID=63805
#MYCOALITIONID=66
#CURSUSID=9
