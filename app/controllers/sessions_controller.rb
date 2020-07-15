class SessionsController < ApplicationController
  def new
  end

  def create

    @user = User.find_by(name: params[:name])
 
    if @user
      return head(:forbidden) unless @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to controller: 'users', action: 'welcome'
    end

  end

  def destroy
    if !session[:name].nil?
      session.delete :name  
    end
  end
end
