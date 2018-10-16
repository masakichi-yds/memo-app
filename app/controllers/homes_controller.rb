class HomesController < ApplicationController
  before_action :forbid_login_user, {only: [:about]}

  def index

  end

  def about

  end

end
