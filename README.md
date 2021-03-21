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
# Features
* Pedago
    * [EventsOfUser](/pedago/EventsOfUser.rb) Get all the EVENTS os user giving the Login
    * [Projects](/pedago/Projects.rb) By giving a login you will be able to see their projects, Marks and status. Also if you give a name of a project you can check if it is registered
    * [userOnPiscine](/pedago/userOnPiscine.rb) Get all USERS on specific piscine of a campus
    * [UsersOfEvents](/pedago/UsersOfEvents.rb) Get all USERS on specific events
* getID
    * [CampusID](/getID/CampusID.rb) Get ID of a CAMPUS giving him name
    * [CoalitionID](/getID/CoalitionID.rb) Get ID of a COALITION giving him name
    * [LoginID](/getID/LoginID.rb) Get ID of a USER giving the login
* Others
    * [allCursus](allCursus.rb) Get all the cursus on 42 network
    * [AllUsers](AllUsers.rb) Get all the users on your Campus
    * [Store42](/Store42.rb) get the Products and prize of the store
    * [Title](/Title.rb)  Get all the titles on 42 network

Documentation: [42 API](https://api.intra.42.fr/apidoc)
Any kind of support is appreciated: iromero- :) <br>
Please feel free to contribute to the repo
