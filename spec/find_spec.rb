require 'sqlite3'
require_relative '../my_user_model.rb'

describe "#find" do
    it "returns the user with specified id" do
        user_info = {firstname: "John" lastname: "Doe" age: "25" password: "password123" email: "johndoe@yahoo.com"}
        user_id = @user.create(user_info)
        expect(@user.find(user_id)).to eq([user_id, "John", "Doe", 30, "password", "johndoe@yahoo.com"])
    end
end
