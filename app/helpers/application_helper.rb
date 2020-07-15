module ApplicationHelper
    def current_user
        User.find(session[:user_id]).name 
    end
end
