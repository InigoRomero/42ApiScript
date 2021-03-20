# helper.rb

require "oauth2"
require "dotenv"

config = File.absolute_path(File.join(File.expand_path(".env"), '..', '.env'))
Dotenv.load(config)

def getToken()
    client = OAuth2::Client.new(ENV['UID'], ENV['SECRET'], site: "https://api.intra.42.fr")
    return client.client_credentials.get_token
end

def getResult(uri)
    token = getToken()

    result = []
    i = 0
    loop do
        i = i + 1
        response = token.get(uri, params: {page: {size: 100, number: i}})
        result += response.parsed
        if response.parsed == []
            break
        end
        sleep(0.25)
    end
    result = result.sort_by { |hash| hash['id'].to_i }
    return result
end

def getCampusID()
    print "Campus name(EMPTY FOR ALL): "
    name = gets.chomp
    
    response = getToken().get("/v2/campus", params: {page: {size: 100, number: 1},filter: {name: name}}).parsed
    return response
end

def getLoginID()
    print "Login: "
    login = gets.chomp
    
    response = getToken().get("/v2/users", params: {page: {size: 100, number: 1},filter: {login: login}}).parsed
    return response
end