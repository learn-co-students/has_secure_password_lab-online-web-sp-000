class UsersController < ApplicationController
  before_action :require_match, only: :create

  def new
    @user=User.new
  end

  def create
    @user= User.create(user_params)
    session[:user_id]=@user.id
    redirect_to user_path(@user)
  end

  def show
    @user=User.find_by id:params[:id]
  end

  private

  def user_params
    params.require(:user).permit(:name,:password, :password_confirmation)
  end

  def require_match
    if params[:user][:password]!=params[:user][:password_confirmation]
      redirect_to '/users/new'
    end
  end
end
