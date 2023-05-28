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
TODO - How to install your project? npm install? make? make re?

## Usage

+ MVC(model view architecture) is the design schematic for the project. 
- model: handles the data requests and has direct interaction with the database, data validation, logic & persisence.
- view: presentation of informtion and interaction between the model and the controller, allowing for more complex projects.
- controller: data request handling & interacts with the model and the view. The controller never handles data direclty, only the requests.
- The user sends the data requests to the controller, the controller sends the requests to the model. The model pushes the data requests to the controller which then
  sends to the view. The controller is used as a middleman in order for separation of the view and model allowing for a more complex and interactive presentation for the user. 
```
./my_project argument1 argument2
```

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>
