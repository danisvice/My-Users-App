require 'rspec'
require 'net/http'
require 'uri'
require 'json'

# POST /sign_in
curl -X POST -H "Content-Type: application/json" -d '{"email":"john@example.com","password":"password1"}' http://localhost:8080/sign_in
# Expected response: {"firstname":"John","lastname":"Doe","age":25,"password":"password1","email":"john@example.com"}