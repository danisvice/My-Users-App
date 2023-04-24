require 'rspec'
require 'net/http'
require 'uri'
require 'json'

curl -X DELETE --cookie "rack.session=1234567890" http://localhost:8080/users
