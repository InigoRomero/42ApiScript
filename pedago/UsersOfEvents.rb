#EventsOfUser.rb
#show if a user is registered on a EVENT
load "../helper.rb"

print "Event Name: "
name = gets.chomp

response = getToken().get("v2/campus/#{ENV['CAMPUSID']}/events", params: {page: {size: 100, number: 1},filter: {name: name}}).parsed
result = getResult("/v2/events/#{response[0]["id"]}/users")
result.each do |key, value|
    puts "ID[#{key["id"]}] LOGIN[#{key["login"]}]"
end

puts "Total: #{result.count}"