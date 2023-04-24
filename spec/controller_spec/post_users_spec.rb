require 'rspec'
require 'net/http'
require 'uri'
require 'json'

curl -X POST -H "Content-Type: application/json" \
-d '{"firstname": "John", "lastname": "Doe", "age": 25, "password": "test1234", "email": "johndoe@example.com"}' \
http://localhost:8080/users
