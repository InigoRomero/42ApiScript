require "oauth2"
require "dotenv"

config = File.absolute_path(File.join(File.expand_path(".env"), '..', '.env'))
Dotenv.load(config)
client = OAuth2::Client.new(ENV['UID'], ENV['SECRET'], site: "https://api.intra.42.fr")
token = client.client_credentials.get_token
# MADRID ID = 22
response = token.get("/v2/expertises_users")
response.status

print response.parsed
# => 200
#response.parsed.each do |key, value|
 #   puts "[#{value}]"
 #end