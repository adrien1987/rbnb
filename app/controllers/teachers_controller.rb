class TeachersController < ApplicationController

  def index
    if params[:category_id].nil?
      @teachers = Teacher.all
    else
      @teachers = Teacher.where(category_id: params[:category_id])
    end
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
    redirect_to profiles_path
  end

  def edit
  end

  def update
  end

  def teacher_params
    params.require(:teacher).permit(:category, :profession, :description, :hourly_price_cents)
  end

  def set_teachers
    @teacher = Teacher.find(params[:category_id])
  end

end
