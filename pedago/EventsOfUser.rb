#EventsOfUser.rb
#show if a user is registered on a EVENT
load "../helper.rb"

user = getLoginID()
if user.count == 0
        puts "Error: ERROR user does not exist ERROR"
else
        result = getResult("/v2/users/#{user[0]["id"]}/events_users")
        result.each do |key, value|
                puts "ID[#{key["id"]}] NAME[#{key["event"]["name"]}] LOCATION[#{key["event"]["location"]}] KIND[#{key["event"]["kind"]}] SUBS[#{key["event"]["nbr_subscribers"]}] MAXSUBS[#{key["event"]["max_people"]}]"
        end

        puts "Total: #{result.count}"
end