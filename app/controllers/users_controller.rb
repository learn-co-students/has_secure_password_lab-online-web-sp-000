class UsersController < ApplicationController
	def new
		
	end

	def create
		user = User.new(user_params)
		if !user.save
			redirect_to "/users/new"
		else
			session[:user_id] = user.id
			redirect_to user
			# redirect_to controller: "sessions", action: "create"
		end
	end

	def show
		@user = User.find(session[:user_id])
	end


	private

	def user_params
		params.require(:user).permit(:name, :password, :password_confirmation)
	end
end



# user = User.create(user_params)
# params[:user][:password] != params[:user][:password_confirmation] 