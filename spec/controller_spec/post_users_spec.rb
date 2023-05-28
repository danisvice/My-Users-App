require 'rspec'
require 'net/http'
require 'uri'
require 'json'

# POST /users
curl -X POST -H "Content-Type: application/json" -d '{"firstname="Jane&lastname=Doe&age=30&password=password2&email=jane@example.com"}' http://localhost:8080/users
# Expected response: {"firstname":"Jane","lastname":"Doe","age":30,"password":"password2","email":"jane@example.com"}
