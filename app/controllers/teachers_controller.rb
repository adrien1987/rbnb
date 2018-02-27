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
  end

  def create
  end

  def edit
  end

  def update
  end
end
