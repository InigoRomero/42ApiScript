#CampusID.rb
#Get ID and data of Campus
load "../helper.rb"

response = getCampusID()
if response.count == 0
    puts "ERROR: It seems that this campus does not belong to the network O_O [try just writing the name of the city where the campus is, without 42 in the name]"
elsif response.count <= 99
    response.each do |key, value|
        puts "ID[#{key["id"]}] NAME[#{key["name"]}] CITY[#{key["city"]}] USERS_COUNT[#{key["users_count"]}]"
    end
elsif response.count == 100
    sleep(0.25)
    result = getResult("/v2/campus");
    result.each do |key, value|
        puts "ID[#{key["id"]}] NAME[#{key["name"]}] CITY[#{key["city"]}] USERS_COUNT[#{key["users_count"]}]"
    end
end