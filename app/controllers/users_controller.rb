class UsersController < ApplicationController
  def new
  end

  def create
  		if !params.values.empty? 
  			if params[:user][:password] == params[:user][:password_confirmation]
	  			@user = User.create(user_params)
	  			session[:user_id] = @user.id
	  			redirect_to '/users/homepage'
	  		else
	  			redirect_to '/signup'
	  		end
		else
			redirect_to '/signup'
		end
  end

  def homepage
  	redirect_to '/login' unless session[:user_id]
  	@user = User.find(session[:user_id])
  end

  def login

  end


end
