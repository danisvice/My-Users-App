require 'sqlite3'

class User
  def initialize
    @db = SQLite3::Database.new('db.sql')
    create_table
  end

  def create(user_info)
    firstname, lastname, age, password, email = user_info.values
    @db.execute(
      'INSERT INTO users (firstname, lastname, age, password, email) VALUES (?, ?, ?, ?, ?)',
      [firstname, lastname, age, password, email]
    )
    @db.last_insert_row_id
  end

  def find(user_id)
    result = @db.execute('SELECT * FROM users WHERE id = ?', user_id)
    result.empty? ? nil : user_hash(result.first)
  end

  def all
    result = @db.execute('SELECT * FROM users')
    result.map { |row| user_hash(row) }
  end

  def update(user_id, attribute, value)
    @db.execute("UPDATE users SET #{attribute} = ? WHERE id = ?", value, user_id)
    find(user_id)
  end

  def destroy(user_id)
    @db.execute('DELETE FROM users WHERE id = ?', user_id)
  end

  private

  def create_table
    @db.execute('CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, firstname TEXT, lastname TEXT, age INTEGER, password TEXT, email TEXT)')
  end

  def user_hash(row)
    {
      id: row[0],
      firstname: row[1],
      lastname: row[2],
      age: row[3],
      password: row[4],
      email: row[5]
    }
  end
end