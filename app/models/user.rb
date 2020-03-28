class User < ActiveRecord::Base
    has_secure_password
end

#  has a password field
#  has a name field
#   has a password confirmation field
#  is valid if password and password_confirmation match
#  is valid if password is set and password_confirmation is nil
#  is invalid if password and password_confirmation are both non-nil and don't match
#authenticate
  #returns the user if credentials match
  #returns falsey if credentials don't match