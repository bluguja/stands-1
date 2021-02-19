class TeachersController < ApplicationController
  before_action :authenticate_user!

  def index  # index controller action
    if current_user.undefined?
      redirect_to edit_user_registration_path
    else
      @teachers = Teacher.all
    end
  end

  def show

  end
end
