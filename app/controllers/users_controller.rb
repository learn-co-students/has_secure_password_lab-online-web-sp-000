class UsersController < ApplicationController
  def new
  end

  def create
  end

  def index
    @user = User.find(id: params[:id])
  end
end
