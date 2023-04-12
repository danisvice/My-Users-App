class USER
    @@users = []
    @@sum = 0
    attr_accesor :firstname, :lastname, :age, :password, :email

    def create(user_info)
        user = User.new
        user.id = @@sum += 1
        user.firstname = user_info[:firstname]
        user.lastname = user_info[:lastname]
        user.age = user_info[:age]
        user.password = user_info[:password]
        user.email = user_info[:email]
        user.save
        @@users << user
        user
    end

    def find(user_id)
        
    end

    def all
    end

    def update(user_id, attribute, value)
    end

    def destroy(user_id)
    end
end