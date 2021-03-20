# 42ApiScript
#### Welcome
Ruby Scripts with calls to the api of 42 useful, thinking to facilitate the work of educators in the piscine and students
# installation macOS
#### Install ruby
```shell
brew install ruby
```
#### install dependencies
```shell
gem install oauth2  
gem install dotenv
```
#### create the .env file
```shell
mv example_env .env
```
# Configure
Now you need to configure the variables of the .env <br>
You can get the UID and the SECRET in profile-> settings-> API-> REGISTER A NEW APP<br>
Once achieved, for the rest of variables, you can know what the ID is by executing the scripts in [getID](/getID)<br>
```env
UID=YOUR_UID
SECRET=YOUR_SECRET
CAMPUSID=YOUR_CAMPUS_ID
MEID=YOUR_ID
MYCOALITIONID=COALITION_ID
CURSUSID=9
```
# Usage
```shell
ruby NAME_RB
```

Any kind of support is appreciated: iromero- :) <br>
Please feel free to contribute to the repo
