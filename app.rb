require 'sinatra'
require 'json'
require_relative 'user'

set :port, 8080
set :bind, '0.0.0.0'
set :public_folder, 'public'
set :views, 'views'

enable :sessions 

user_db = User.new('db.sql')

get '/' do 
    erb :index 
end

get '/users' do 
    content_type :json 
    user_db.all.to_json
end

post '/users' do 
    user_info = params.slice('firstname', 'lastname', 'age', 'password', 'email')
    user_id = user_db.create(user_info)
    content_type :json
    user_db.find(user_id).slice('id', 'firstname', 'lastname', 'age', 'email').to_json
end

post '/sign_in' do
    email,password = params.values_at('email', 'password')
    user = user_db.all.find {|u| u [:email] == email && u[:password] == password}
    if user 
        session[:user_id] = user[:id]
        content_type :json
        user.slice('id', 'firstname', 'lastname', 'age', 'email').to_json
    else
        halt 401 , 'Invalid email or password'
    end
end

put '/users' do
    user_id = session[:user_id]
    halt 401, "Not signed in" unless user_id
    new_password = params['new_password']
    user = user_db.update(user_id, 'password', new_password)
    content_type :json
    user.slice('id', 'firstname', 'lastname', 'age', 'email').to_json
end

delete '/sign_out' do
    session.clear
    status 204
end

delete '/users' do 
    user_id = session[:user_id]
    halt 401, 'Not signed in'unless user_id
    user_db
end