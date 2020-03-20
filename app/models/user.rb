class User < ActiveRecord::Base
  has_secure_password
  #validates :name, presence: true
  #validate :authenticate

  # def authenticate(user_password)
  #   if self.password.present? && self.password_confirmation.present? && passwords_match?
  #     self
  #   else
  #     false
  #   end
  # end

  # def passwords_match?
  #   self.password == self.password_confirmation
  # end
# 
# private
#
#   def password_and_confirmation_must_match
#     self.password == self.password_confirmation
#   end

end
