class WelcomeController < ApplicationController

  #get '/welcome', to: 'welcome#welcomepage'
  def welcomepage
    @user = current_user 
  end
end
