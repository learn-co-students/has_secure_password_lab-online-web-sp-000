class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:user][:name], password: params[:user][:password])
    if @user == nil
      redirect_to '/login'
    else
      session[:user_id] = @user.id
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
