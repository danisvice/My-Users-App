require 'sqlite3'
require '../my_user_model.rb'

describe '#update' do 
    it 'updates the specified attribute for the user with the specified id' do 
        user_info = {firstname: "John" lastname: "Doe" age: 25 password: "password123" email: "johndoe@yahoo.com"}
        user_id = @user.create(user_info)
        @user.update(user_id, "password123", "9966")
        expect(@user.find(user_id).to_eq([user_id, "John", "Doe", 25, ]))