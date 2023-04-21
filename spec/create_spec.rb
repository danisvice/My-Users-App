require 'sqlite3'
require_relative '../my_user_model.rb'

describe #create do 
    it "adds a new user to the database" do
        user_info = {firstname: "John", lastname: "Doe", age: "25", password: "password", email: "john.doe@example.com"}
        expect (@user.create(user_info)).to_eq(1)
    end
end
