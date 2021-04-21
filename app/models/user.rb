class User < ApplicationRecord
    has_secure_password

    def password=(new_password)
        salt = BCrypt::Engine::generate_salt
        hashed = BCrypt::Engine::hash_secret(new_password, salt)
        self.password_digest = salt + hashed
    end
 
    def authenticate(password)
        salt = password_digest[0..28]
        hashed = BCrypt::Engine::hash_secret(password, salt)
        if (salt + hashed) == self.password_digest
            return self
        else
            return nil
        end
    end
    
end
