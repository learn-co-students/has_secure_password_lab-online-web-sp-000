class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all 
  end

  def create
    #binding.pry
    if params[:user][:password] == params[:user][:password_confirmation] || params[:user][:password_confirmation].nil?
      @user = User.create(user_params)
      session[:user_id]=@user.id
      redirect_to @user
    else
      redirect_to controller: 'users', action: 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
