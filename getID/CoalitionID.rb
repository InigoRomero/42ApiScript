#Coalition.rb
#Get ID and data of Coalation
load "helper.rb"

print "Coalition name(EMPTY FOR ALL): "
name = gets.chomp
exist = false

result = getResult("/v2/coalitions");
if name != ""
    result.each do |key, value|
        if key["name"] == name
            exist = true
            puts "ID[#{key["id"]}] NAME[#{key["name"]}] SCORE[#{key["score"]}] COLOR[#{key["color"]}]"
        end
    end
    if exist == false
        puts "ERROR: That coalition does not exist :s"
    end
else
    result.each do |key, value|
        puts "ID[#{key["id"]}] NAME[#{key["name"]}] SCORE[#{key["score"]}] COLOR[#{key["color"]}]"
    end
end