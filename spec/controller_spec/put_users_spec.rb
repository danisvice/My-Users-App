require 'rspec'
require 'net/http'
require 'uri'
require 'json'

curl -X PUT -H "Content-Type: application/json" \
-d '{"new_password": "newpass1234"}' \
--cookie "rack.session=1234567890" \
http://localhost:8080/users
