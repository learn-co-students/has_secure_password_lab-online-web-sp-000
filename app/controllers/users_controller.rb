require 'pry'

class UsersController < ApplicationController
    def index

    end

    def new

    end

    def create
      #binding.pry
      if params[:user][:password] == params[:user][:password_confirmation]
        User.create(user_params)
        session[:user_id] = User.last.id
        redirect_to :controller => 'users', :action => 'index'
      else
        redirect_to :controller => 'users', :action => 'new'
      end
    end
   
    private
   
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
  end