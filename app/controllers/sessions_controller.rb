class SessionsController < ApplicationController

  def new
  end

# SessionsController#create method l
  def create
    @user = User.find_by(name: params[:user][:name]) #logs you in withcorrect name
    if @user == nil
      redirect_to 'new'
    else
      return head(:forbidden) unless @user.authenticate(params[:user][:password]) #logs you in with correct password
      session[:user_id] = @user.id
      redirect_to homepage_path(@user)
    end
  end

end

#returns the user if credentials match
#returns falsey if credentials don't match 
