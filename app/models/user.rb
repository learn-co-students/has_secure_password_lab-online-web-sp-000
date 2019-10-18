class User < ApplicationRecord
  validates :password, :presence => { :on => :create }, confirmation: true

  has_secure_password
end
