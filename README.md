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

+       PART I: USER MODEL
    - The first part of the project involved creating a 
    - User class that serves as the interface for managing 
    - user records in the database. The class includes methods 
    - for creating users, finding users by ID, retrieving all users, 
    - updating user attributes, and destroying users. The user records 
    - are stored in an SQLite database named db.sql, and the users table 
    - contains attributes such as firstname, lastname, age, password, and email.

+       PART II: CONTROLLER 
    - The second part focused on implementing a controller 
    - that handles HTTP requests and interacts with the User model. 
    - The controller includes routes for various actions, such as retrieving 
    - all users, creating new users, signing in, updating passwords, signing out, 
    - and deleting users. These routes return responses in JSON format and involve 
    - interacting with the User model to perform the necessary operations on the user records.

+       PART III: VIEWS
    - The third part introduced the concept of views and included a 
    - route that responds with an HTML page. The HTML template, stored 
    - in the views directory, is named index.erb. It displays a table of user 
    - information, including firstname, lastname, age, and email. The template uses 
    - embedded Ruby (ERB) to dynamically render the user data retrieved from the database.

+       SUMMARY: 
-  To solve the problem, the solution involved writing the necessary Ruby code to implement 
- the user model, controller routes, and HTML template. The code utilizes the sinatra gem for 
- building the web application, the json gem for handling JSON responses, and the sqlite3 gem for 
- interacting with the SQLite database. The implementation follows the MVC architecture, separating 
- the concerns of data management, request handling, and view rendering.


## Installation
1. Clone the repository to your local machine.
2. Make sure you have Ruby installed.
3. Install the required gems by running the following command: 
    bundle install
4. Set up the SQLite database by running the following command:
    ruby db_setup.rb


## Usage
        PART I: USER MODEL
Class: User
The User class serves as the interface for managing user records in the database.

Methods
+ def create(user_info): Creates a new user with the provided information and returns a unique ID (a positive integer).
+ def find(user_id): Retrieves the user with the specified ID and returns all the information contained in the database.
+ def all: Retrieves all users from the database and returns a hash of users.
+ def update(user_id, attribute, value): Retrieves the user with the specified ID, updates the specified attribute with the given value, and returns the updated user hash.
+ def destroy(user_id): Retrieves the user with the specified ID and deletes it from the database.

SQLite Database
+ The user records are stored in an SQLite database named db.sql. The database table is named users and has the following attributes:

firstname (string)
lastname (string)
age (integer)
password (string)
email (string)


        PART II: CONTROLLER
- The controller handles HTTP requests and interacts with the User model. The routes return responses in JSON format.

Routes
GET /users: Retrieves all users from the database (excluding their passwords) and returns the user records as JSON.
POST /users: Creates a new user with the provided parameters (firstname, lastname, age, password, email). The user is stored in the database, and the created user record (excluding the password) is returned as JSON.
POST /sign_in: Validates the provided email and password, creates a session containing the user_id for logging in, and returns the user record (excluding the password) as JSON.
PUT /users: Requires the user to be logged in. Updates the user's password with the provided value. The updated user record (excluding the password) is returned as JSON.
DELETE /sign_out: Requires the user to be logged in. Signs out the current user by removing the session. No response body is returned (HTTP status code 204).
DELETE /users: Requires the user to be logged in. Signs out the current user and deletes their user record from the database. No response body is returned (HTTP status code 204).
Part III: Views
The application includes a route / that responds with an HTML page. The HTML template is stored in the views directory.

        PART III: VIEWS
Template: views/index.erb Render: output.html
CURL TESTS:
1. render index.erb via output.html 
+ GET ON '/'
- curl -X GET http://localhost:8080/ > output.html 
+ POST/ 
- curl -X POST -i http://localhost:8080/users -d "firstname=Matt" -d "lastname=Damon" -d "age=26" -d "password=limoncello" -d "email=longbeach@yahoo.com" > output.html
  

```
./my_project argument1 argument2
```

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>
