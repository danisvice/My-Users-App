require 'sqlite3'
require_relative '../my_user_model.rb'

describe '#all' do 
    it "returns a hash of all the users in the database" do 
        user_info_1 = {firstname: "John" lastname: "Doe" age: 25 password: "password123" email: "johndoe@yahoo.com"}
        user_info_2 = {firstname : "Jane" lastname: "Doe" age: 30 password: "0123" email: "janedoe@gmail.com"}
        @user.create(user_info_1)
        @user.create(user_info_2)
        expect(@user.all).to_eq([{id: 1, firstname: "John", lastname: "Doe", age: 25, email: "johndoe@yahoo.com"}, {id: 2, firstname: "Jane", lastname: "Doe", age: 25, email: "janedoe@gmail.com"}])
    end
end