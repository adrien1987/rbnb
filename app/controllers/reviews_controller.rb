class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @meeting = Meeting.find(params[:meeting_id])
  end

  def create
    @meeting = Meeting.find(params[:meeting_id])
    @review = Review.new(review_params)
    @review.meeting = @meeting
    @review.save
    redirect_to teacher_path(@review.meeting.teacher)
  end


  def review_params
    params.require(:review).permit(:teacher_id, :meeting_id, :note, :content)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
