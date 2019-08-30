
class User < ApplicationRecord
  validates :password, confirmation: true  

  def authenticate(password)
    return self if self.password == password
  end
end
