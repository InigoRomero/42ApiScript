require "oauth2"
require "dotenv"

config = File.absolute_path(File.join(File.expand_path(".env"), '..', '.env'))
Dotenv.load(config)
client = OAuth2::Client.new(ENV['UID'], ENV['SECRET'], site: "https://api.intra.42.fr")
token = client.client_credentials.get_token

result = []
i = 1

loop do
    i = i + 1
    response = token.get("/v2/titles", params: {page: {number: i}})
    result += response.parsed
    sleep(0.25)
    if response.parsed == []
        break
    end
end

result = result.sort_by { |hash| hash['id'].to_i }
result.each do |key, value|
        puts "[#{key}]"
end