module UsersHelper

    def username
        User.find_by(id: session[:user_id]).name if session[:user_id]
    end

end
