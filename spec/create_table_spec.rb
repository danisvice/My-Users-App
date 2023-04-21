require 'sqlite3'
require_relative '../my_user_model'

describe "create_table" do
    it "creates a users table in the database" do 
        @user.create_table
        expect(@user.db.execute("SELECT name FROM sqlite master WHERE type='table' AND name='users' ;")).to_eq([['users']])
    end
end
