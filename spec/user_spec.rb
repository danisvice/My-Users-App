require 'sqlite3'
require_relative '../my_user_model.rb'

describe User do
    before(:each) do
      @user = User.new
end

after(:each) do
    @user.db.execute("DROP TABLE IF EXISTS users;")
end