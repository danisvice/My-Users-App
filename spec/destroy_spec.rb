require 'sqlite3'
require_relative '../my_user_model.rb'

describe '#destroy' do 
    it 'deletes the user with the specified id' do
        user_info = {firstname: "John" lastname: "Doe" age: 25 password: "password123" email: "johndoe@yahoo.com"}
        user_id = @user.create(user_info)
        @user.destroy(user_id)
        expect(@user.find(user_id)).to_be_nil
        end
    end 
end