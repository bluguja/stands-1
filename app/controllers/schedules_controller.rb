class SchedulesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_schedule, only: [:update, :destroy, :show, :edit]

  def index
    if current_user.undefined?
      redirect_to edit_user_registration_path
    else
      @schedules = current_user.schedules
    end
  end

  def show

  end

  def new
    @schedule = current_user.schedules.new
    @teacher = Teacher.find(params[:teacher_id])
  end

  def create
    @schedule = current_user.schedules.new(schedule_params)
    @teacher = Teacher.find(schedule_params[:teacher_id])
    if @schedule.save
      redirect_to schedules_path, notice: 'Your schedule has been fixed successfully'
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
    if @schedule.destroy
      redirect_to schedules_path, notice: 'Your schedule has been removed successfully'
    end
  end

  private

  def schedule_params
    params.require(:schedule).permit(:schedule_date, :teacher_id)
  end

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end
end
