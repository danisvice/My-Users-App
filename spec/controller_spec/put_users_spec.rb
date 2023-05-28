require 'rspec'
require 'net/http'
require 'uri'
require 'json'

# PUT /users
curl -X POST -H "Content-Type: application/json" -d '{"email":"john@example.com","password":"password1"}' http://localhost:8080/sign_in
curl -X PUT -H "Content-Type: application/json" -d '{"new_password":"new_password"}' http://localhost:8080/users
# Expected response: {"firstname":"John","lastname":"Doe","age":25,"password":"new_password","email":"john@example.com"}