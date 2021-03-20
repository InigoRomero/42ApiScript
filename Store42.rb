#Store42.rb
load "helper.rb"

result = getResult("/v2/campus/#{ENV['CAMPUSID']}/products");
result.each do |key, value|
    puts "Product:[#{key["name"]}] Price:[#{key["price"]}]"
end

puts "Total: #{result.count}"