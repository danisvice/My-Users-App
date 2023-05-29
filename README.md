# Welcome to My Users App
***
## Task
+ implemention of a MVC(Model View Controller) architecture
+       This project implements a web application using the 
- Model-View-Controller (MVC) architecture. 
- The application allows the creation, retrieval, updating, and deletion 
- of user records stored in a SQLite database. It also provides a web interface 
- for displaying user information and performing various actions.

## Description
+   SUMMARY: 
-  To solve the problem, the solution involved writing the necessary Ruby code to implement 
- the user model, controller routes, and HTML template. The code utilizes the sinatra gem for 
- building the web application, the json gem for handling JSON responses, and the sqlite3 gem for 
- interacting with the SQLite database. The implementation follows the MVC architecture, separating 
- the concerns of data management, request handling, and view rendering.


## Installation
1. open 2 separate terminals
2. run `ruby app.rb' in terminal 1
3. run curl tests in terminal 2
4. views/index.erb render via output.html 

## Usage
+   PART I: USER MODEL
+ Class: User
- The User class serves as the interface for managing user records in the database.

+   PART II: CONTROLLER
- The controller handles HTTP requests and interacts with the User model. The routes return responses in JSON format.

+   PART III: VIEWS
+ Template: views/index.erb Render: output.html

+   CURL TESTS:
1. render index.erb via output.html 

+ GET on '/'
    curl -X GET http://localhost:8080/ > output.html 

+ POST/users
    curl -X POST -i http://localhost:8080/users -d "firstname=Matt" -d "lastname=Damon" -d "age=26" -d "password=limoncello" -d "email=longbeach@yahoo.com" > output.html

+ POST/sign_in
    curl -c cookies.txt -X POST localhost:8080/sign_in -d email=longbeach@yahoo.com -d password=limoncello

- PUT/users 
    curl -b cookies.txt -X PUT localhost:8080/users -d password=pancakes

- DELETE/users 
    curl -b cookies.txt -X DELETE localhost:8080/users

- DELETE/sign_out 
    curl -b cookies.txt -X DELETE localhost:8080/sign_out

```
./my_project argument1 argument2
```

### The Core Team
Made by Qwasar students; I was able to collaborate with 3 other Qwasar team-mates/guardians 
and they were able to give feedback and tips for guidance on how to continue onwards with this 
project. 

<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>
