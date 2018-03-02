class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:category_id].nil?
      @teachers = Teacher.all
    else
      @teachers = Teacher.where(category_id: params[:category_id])
    end
  end

  def show
    @current_user = current_user
    @meeting = Meeting.new
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
    if @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @teacher = Teacher.update(teacher_params)
      redirect_to teacher_path(@teacher)
    else
      render :edit
    end
  end

  def teacher_params
    params.require(:teacher).permit(:category_id, :profession, :description, :hourly_price_cents)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

end
