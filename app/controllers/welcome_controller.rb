class WelcomeController < ApplicationController
  before_action :login_required

  def hello
  end
end
