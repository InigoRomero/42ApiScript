#Projects.rb
#Giving the login show all the project or check specific project
load "../helper.rb"

user = getLoginID()
print "Project Name(EMPTY FOR ALL): "
name = gets.chomp
registered = false
if user.count == 0
        puts "Error: ERROR user does not exist ERROR"
else
    result = getResult("/v2/users/#{user[0]["id"]}/projects_users")
    result.each do |key, value|
        if name == "" || name == key["project"]["name"]
            registered = true
            puts "NAME[#{key["project"]["name"]}] STATUS[#{key["status"]}] MARK[#{key["final_mark"]}]"
        end
    end
end

if registered == true && name != ""
    puts "ALL OKEY :)"
elsif name != ""
    puts "NOT REGISTERED :("
end