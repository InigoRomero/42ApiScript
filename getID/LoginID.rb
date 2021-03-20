#LoginID.rb
#Get ID with the login
load "helper.rb"

print "Login: "
login = gets.chomp

response = getToken().get("/v2/users", params: {page: {size: 100, number: 1},filter: {login: login}}).parsed

if (response.count == 0)
    puts "That login does not exist, please do not fail again"
else
    response.each do |key, value|
        puts "ID[#{key["id"]}]"
    end
end