class SessionsController < ApplicationController

	def new
		redirect_to root_path if logged_in?
	end

	def create
		if @user = User.find_by(name: params[:user][:name])
			return head(:forbidden) unless @user.authenticate(params[:user][:password])
			session[:user_id] = @user.id
			redirect_to root_path
		else
			redirect_to login_path
		end
	end

	def destroy
		session.delete :user_id
		redirect_to login_path
	end
end
