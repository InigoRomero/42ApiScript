#AllUsers.rb
# this will show the login and the id of the all users on your campus
load "helper.rb"

result = getResult("/v2/campus/#{ENV['CAMPUSID']}/users");
result.each do |key, value|
        puts "[#{key["id"]}][#{key["login"]}]"
end

puts "Total: #{result.count}"