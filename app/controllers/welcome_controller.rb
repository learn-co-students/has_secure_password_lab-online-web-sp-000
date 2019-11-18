class WelcomeController < ApplicationController
  before_action :require_logged_in
  def new
  end
end
