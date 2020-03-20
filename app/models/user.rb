class User < ActiveRecord::Base
  validates :name, presence: true
  #validate :authenticate

  def authenticate
    if self.password.present? && self.password_confirmation.present? && self.password == self.password_confirmation
      self
    else
      false
    end
  end

private

  def password_and_confirmation_must_match
    self.password == self.password_confirmation
  end

end
