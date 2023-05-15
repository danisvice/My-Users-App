require 'sqlite3'

class ConnectionSqlite
  attr_reader :db

  def initialize(db_filename)
    @db = SQLite3::Database.new(db_filename)
    create_table
  end

  def create_table
    db.execute <<-SQL 
      CREATE TABLE IF NOT EXISTS
      users (
        id INTEGER PRIMARY KEY, 
        firstname TEXT,
        lastname TEXT,
        age INTEGER,
        password TEXT,
        email TEXT
      );
    SQL
  end

  def create(user_info)
    firstname, lastname, age, password, email = user_info.values_at('firstname', 'lastname', 'age', 'password', 'email')
    db.execute("INSERT INTO users (firstname, lastname, age, password, email) VALUES (?,?,?,?,?)", [firstname,lastname,age,password,email])
    db.last_insert_row_id
  end

  def get(user_id)
    db.execute("SELECT * FROM users WHERE id=?", [user_id]).first
  end

  def all
    db.execute("SELECT * FROM users").map do |row|
      to_h_with_adding_keys(row)
    end
  end

  def update(user_id, attribute, value)
    db.execute("UPDATE users SET #{attribute}=? WHERE id=?", [value, user_id])
    get(user_id)
  end

  def destroy(user_id)
    db.execute("DELETE FROM users WHERE id=?", [user_id])
  end

  private

  def to_h_with_adding_keys(array)
    keys = ["id", "firstname", "lastname", "age", "password", "email"]
    keys.zip(array).to_h.transform_keys(&:to_sym)
  end
end

class User
  def initialize
    @connection = ConnectionSqlite.new('db.sql')
  end

  def create(user_info)
    @connection.create(user_info)
  end

  def find(user_id)
    @connection.get(user_id)
  end

  def all
    @connection.all
  end

  def update(user_id, attribute, value)
    @connection.update(user_id, attribute, value)
  end

  def destroy(user_id)
    @connection.destroy(user_id)
  end
end
