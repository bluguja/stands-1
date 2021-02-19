class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.undefined?
      redirect_to edit_user_registration_path
    end
  end
end
