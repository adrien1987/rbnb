class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update]
  def create
    @teacher = Teacher.find(params[:teacher_id])
    @meeting = Meeting.new(meeting_params)
    @meeting.status = "A confirmer"
    @meeting.teacher = @teacher
    @meeting.user = current_user
    if @meeting.save
      redirect_to profiles_path(@teacher)
    else
      render 'teachers/show'
    end
  end

  def show
    @current_user = current_user
    @markers = [{
      lat: @meeting.latitude,
      lng: @meeting.longitude,
    }]


  end

  def edit
    @current_user = current_user
  end

  def update
    if @meeting.update(meeting_params)
      if current_user == @meeting.teacher.user
        redirect_to teacher_path(@meeting.teacher)
      else
        redirect_to profiles_path
      end
    else
      render :edit
    end
  end

  private

  def meeting_params
    params.require(:meeting).permit(:date, :duration, :city, :zipcode,
      :address, :description, :status)
  end

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end
end
