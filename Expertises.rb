#Expertises.rb
load "helper.rb"

response = getToken().get("/v2/expertises_users")
response.status

print response.parsed
# => 200
#response.parsed.each do |key, value|
 #   puts "[#{value}]"
 #end