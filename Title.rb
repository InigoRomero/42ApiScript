#Title.rb
load "helper.rb"

token = getToken()

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