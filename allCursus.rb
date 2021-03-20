#AllUsers.rb
# this will show the login and the id of the all users on your campus
load "helper.rb"

result = getResult("/v2/cursus");
result.each do |key, value|
        puts "ID[#{key["id"]}] NAME[#{key["name"]}] SLUG[#{key["slug"]}]"
end

puts "Total: #{result.count}"