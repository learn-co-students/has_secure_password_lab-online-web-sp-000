module UsersHelper
  def current_user
    session[:name]
  end
end
