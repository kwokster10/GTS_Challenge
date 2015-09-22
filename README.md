# Response to a Code Challenge

## A simple Ruby on Rails app using Bootstrap. 

## Execute the following on the command line after cloning this repo and connecting to your MySQL Database. If you have issues connecting to your MySQL, follow the directions in **Connecting to your MySQL DB** section.

1. bundle install 
2. rake db:drop db:create 
3. rake db:migrate (**Make sure you are connected to your MySQL and have imported the .sql file before running this command.)
3. rails s
 
+ Fire up your desired browser and navigate to 'localhost:3000' to login.
+ Upon successful login, user can see Engines Index View with all Engines related to user.
+ Navigate to see Connections View by clicking on an Engine Name.
+ Navigate back and forth as desired. 
+ Click the "Edit" buttons to update an Engine or Connection. Hit "Update" to save the changes.
+ Click "Sign Out" when you are finished.


##Connecting and Importing to your MySQL DB

1. Configure the _database.yml_ file to have the same username and password as your mysql
2. Run ```mysql.server start``` from the command line to start your mysql server.
3. Run ```mysql -u root -p``` from the command line to login to mysql root user with a password, if your mysql db is password protected.
4. If you get an access denied error, try executing ```GRANT ALL PRIVILEGES on *.* to 'root'@'localhost';``` on the command line from the mysql prompt. Replace 'root' with whatever username you used.
5. If you haven't already, be sure to run ```rake db:create```. 
6. Run ```mysql gts_challenge_development < WebDevTest.sql -uroot -p``` to dump the .sql file into the newly created database, where 'gts_challenge_development' is the name of the db in this application and WebDevTest.sql is the name of the sql dump file.


## _Note_: you will need the data from a .sql file to get the most out of this app. The file contains the original migrations and seeds for the db.



