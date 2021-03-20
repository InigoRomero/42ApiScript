#Store42.rb
load "helper.rb"

response = getToken().get("/v2/campus/22/products")
response.parsed.each do |key, value|
    puts "Product:[#{key["name"]}] Price:[#{key["price"]}]"
 end