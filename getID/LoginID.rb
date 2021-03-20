#LoginID.rb
#Get ID with the login
load "helper.rb"

response = getLoginID()
if response.count == 0
    puts "ERROR: That login does not exist, please do not fail again"
else
    response.each do |key, value|
        puts "ID[#{key["id"]}]"
    end
end