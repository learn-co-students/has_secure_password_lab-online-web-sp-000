class User < ActiveRecord::Base
  has_secure_password


  def password_valid?
    self.password == self.password_confirmation
  end
end
