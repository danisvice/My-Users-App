require 'rspec'
require 'net/http'
require 'uri'
require 'json'

curl -X POST -H "Content-Type: application/json" \
-d '{"email": "johndoe@example.com", "password": "test1234"}' \
http://localhost:8080/sign_in
