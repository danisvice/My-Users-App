# Welcome to My Users App
***

## Task

+ implemention of a MVC(Model View Controller) architecture
+   This project implements a web application using the 
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
