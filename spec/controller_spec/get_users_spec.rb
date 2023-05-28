require 'rspec'
require 'net/http'
require 'uri'
require 'json'

# GET /users
curl -X GET http://localhost:8080/users
# Expected response: [{"firstname":"John","lastname":"Doe","age":25,"password":"password1","email":"john@example.com"}]