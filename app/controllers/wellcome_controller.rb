class WellcomeController < ApplicationController
  before_action :require_login
  
  def homepage
    render "wellcome/homepage"
  end

end
