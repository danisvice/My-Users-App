require 'rspec'
require 'net/http'
require 'uri'
require 'json'

# DELETE /sign_out
curl -X DELETE http://localhost:8080/sign_out
# Expected response: No response body, status 204
