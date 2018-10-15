class ApplicationController < ActionController::Base
  before_action :get_category
  before_action :set_current_user

  def get_category
    @categories = Category.all
  end

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
end
