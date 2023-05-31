require 'rspec'
require 'net/http'
require 'uri'
require 'json'

# POST /users
curl -X POST -i http://localhost:8080/users -d "firstname=Matt" -d "lastname=Damon" -d "age=26" -d "password=limoncello" -d "email=longbeach@yahoo.com"
# Expected response: {"firstname":"Matt","lastname":"Damon","age":26,"password":"limoncello","email":"longbeach@yahoo.com"}
