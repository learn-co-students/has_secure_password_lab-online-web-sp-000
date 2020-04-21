class SessionsController < ApplicationController
	def create
    @user = User.find_by(name: params[:user][:name])
    if !@user
      redirect_to 'new'
    else
			session[:user_id] = @user.id if @user.authenticate(params[:user][:password])
	  end
	end
end
