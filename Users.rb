#Users.rb
load "helper.rb"

token = getToken()

result = []
i = 1
loop do
    i = i + 1
    response = token.get("/v2/campus/22/users", params: {page: {number: i}})
    result += response.parsed
    sleep(0.25)
    if response.parsed == []
        break
    end
end
result = result.sort_by { |hash| hash['id'].to_i }
result.each do |key, value|
        puts "[#{key["id"]}][#{key["login"]}]"
end

puts "Total of users in 42Madrid: #{result.count}"