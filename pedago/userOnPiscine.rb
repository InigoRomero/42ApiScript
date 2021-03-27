#isRegistered.rb
#show users of a piscine
load "../helper.rb"

print "pool year: "
year = gets.chomp
print "pool month: "
month = gets.chomp

token = getToken()

result = []
i = 0
loop do
    i = i + 1
    response = token.get("v2/campus/#{ENV['CAMPUSID']}/users", params: {page: {size: 100, number: i},filter: {pool_year: year, pool_month: month}}).parsed
    result += response
    if response == []
        break
    end
    sleep(0.25)
end
result = result.sort_by { |hash| hash['id'].to_i }
result.each do |key, value|
        puts "[#{key["id"]}][#{key["login"]}]"
end

puts "Total: #{result.count}"