require 'rspec'
require 'sqlite3'
require_relative '../my_user_model.rb'

describe "#create" do 
    it "adds a new user to the database" do
        user_info = {firstname: "John" lastname: "Doe" age: 25 password: "password123" email: "johndoe@yahoo.com"}
        expect(@user.create(user_info)).to eq(1)
    end
end
