require 'sqlite3'
require '../my_users_model.rb'

describe User do
describe "#initialize" do
    it "creates a new instance of the User class with a database connection" do
      user = User.new
      expect(user.db).to be_an_instance_of(SQLite3::Database)
        end
    end
end