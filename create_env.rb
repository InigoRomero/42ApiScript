# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_env.rb                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbergs-f <sbergs-f@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/28 16:59:38 by sbergs-f          #+#    #+#              #
#    Updated: 2021/03/29 13:57:06 by sbergs-f         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

load 'helpers/header.rb'

printHeader()

def getCredentials()
  env = File.open(".env", "w")

  puts "Input your UID: "
  uid = gets.chomp
  puts "Input your Secret: "
  secret = gets.chomp

  env.puts "UID=#{uid}"
  env.puts "SECRET=#{secret}"

  env.close
end

def getRest()
  load "helper.rb"
  token = getToken()

  env = File.open(".env", "a")

  puts "Input your Login: "
  login = gets.chomp

  meid = ""
  campusid = ""
  mycoalitionid = ""
  cursusid = ""

  meid = token.get("/v2/users/#{login}").parsed["id"]

  sleep(0.25)

  campusid_res = token.get("/v2/users/#{meid}").parsed["campus"]
  campusid_res.each do |key, value|
    campusid = key["id"]
  end

  sleep(0.25)

  mycoalitionid_res = token.get("/v2/users/#{meid}/coalitions").parsed
  mycoalitionid_res.each do |key, value|
    mycoalitionid = key["id"]
  end

  sleep(0.25)

  cursusid_res = token.get("/v2/users/#{meid}/cursus_users").parsed
  cursusid_res.each do |key, value|
    cursusid = key["cursus"]["id"]
    break
  end

  env.puts "MEID=#{meid}"
  env.puts "CAMPUSID=#{campusid}"
  env.puts "CURSUSID=#{cursusid}"
  env.puts "MYCOALITIONID=#{mycoalitionid}"

  env.close
end

unless File.exists?(".env")
  getCredentials()
  getRest()
end

#UID=e75f0c55f0c689a735d0191fc63f5e261bc6c39acfbd18fc2e38d0b43750497c
#SECRET=66387b205210fbf8a36bef393beecef2fb0b9e6a3f021d6b0f8e512d349aa783
#CAMPUSID=22
#MEID=63805
#MYCOALITIONID=66
#CURSUSID=9
