class WelcomeController < ApplicationController

  def homepage
    @user=User.find(:name => session(:name))
  end

end