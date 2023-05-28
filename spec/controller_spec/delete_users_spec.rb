require 'rspec'
require 'net/http'
require 'uri'
require 'json'

# DELETE /users
curl -X DELETE http://localhost:8080/users
# Expected response: No response body, status 204
