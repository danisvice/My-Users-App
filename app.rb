require 'sinatra'
require 'json'
require 'sqlite3'
require_relative 'my_user_model'

enable :sessions

user = User.new

# Rest of the routes...

get '/' do
  users = user.all
  erb :'index.html', locals: { users: users }
end


post '/users' do
  user_info = {
    firstname: params[:firstname],
    lastname: params[:lastname],
    age: params[:age],
    password: params[:password],
    email: params[:email]
  }
  user_id = user.create(user_info)
  created_user = user.find(user_id)&.reject { |k, _| k == :password }
  created_user.to_json
end

post '/sign_in' do
  user_info = {
    email: params[:email],
    password: params[:password]
  }
  user_id = authenticate(user_info)
  session[:user_id] = user_id
  signed_in_user = user.find(user_id)&.reject { |k, _| k == :password }
  signed_in_user.to_json
end

put '/users' do
  user_id = session[:user_id]
  return status 401 unless user_id

  user.update(user_id, 'password', params[:new_password])
  updated_user = user.find(user_id)&.reject { |k, _| k == :password }
  updated_user.to_json
end

delete '/sign_out' do
  session.clear
  status 204
end

delete '/users' do
  user_id = session[:user_id]
  return status 401 unless user_id

  user.destroy(user_id)
  session.clear
  status 204
end

def authenticate(user_info)
  # Implement your authentication logic here
  # Return the user ID if authentication is successful, otherwise return nil
  # You can compare the user_info with the data stored in your database
  # or use any other authentication mechanism
  # This is just a placeholder method, replace it with your own implementation
  user_id = 1
  user_id if user_info[:email] == 'test@example.com' && user_info[:password] == 'password'
end

