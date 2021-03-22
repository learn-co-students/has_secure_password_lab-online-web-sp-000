class User < ApplicationRecord
    validates :password, presence: true
    validates :password, confirmation: true

  

    def authenticate(string)
        if self.password == string
            return self
        end
    end
end
