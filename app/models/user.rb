class User < ApplicationRecord
    validates :password, confirmation: true

    
    def authenticate(password)
        if password == self.password
            self
        else
            nil
        end
    end

end
