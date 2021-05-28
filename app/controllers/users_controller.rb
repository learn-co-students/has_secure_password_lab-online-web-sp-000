class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
    else
      redirect_to new_users_path
    end
  end


  private
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
