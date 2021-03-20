# helper.rb

require "oauth2"
require "dotenv"

def getToken()
    config = File.absolute_path(File.join(File.expand_path(".env"), '..', '.env'))
    Dotenv.load(config)
    client = OAuth2::Client.new(ENV['UID'], ENV['SECRET'], site: "https://api.intra.42.fr")
    return client.client_credentials.get_token
end