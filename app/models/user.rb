class User < ApplicationRecord
    has_secure_password

    def welcome
    end
end
