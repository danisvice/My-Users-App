require 'sqlite3'

class USER
    attr_reader :db

    def initialize(db_file)
        @db = SQLite3::Database.new('db.sql')
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
        firstname, lastname, age, password, email = user_info.values
        db.execute("INSERT INTO users (firstname, lastname, age, password, email) VALUES (?,?,?,?,?)",[firstname,lastname,age,password,email])
        db.last_insert_row_id
    end

    def find(user_id)
        db.execute("SELECT * FROM users WHERE id=?", [user_id]).first
    end

    def all
        db.execute("SELECT id, firstname, lastname, age, password, email FROM users").map do |row|
        {id: row[0], firstname: row[1], lastname: row[2], age: row[3], email: row[4]}
        end
    end

    def update(user_id, attribute, value)
        db.execute("UPDATE users SET #{attribute}=? WHERE id=? ", [value, user_id])
    end

    def destroy(user_id)
        db.execute("DELETE FROM users WHERE id=?", [user_id])
    end
end