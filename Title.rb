#Title.rb
# this will show all the titles
load "helper.rb"

result = getResult("/v2/titles");
result.each do |key, value|
        puts "[#{key}]"
end

puts "Total: #{result.count}"