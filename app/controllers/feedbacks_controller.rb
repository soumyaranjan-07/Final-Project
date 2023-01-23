
class FeedbacksController < ApplicationController
  before_action :authenticate_student!
  def index
    @feedbacks = Feedback.all
  end
  
  def new
    @feedbacks = Feedback.new
  end

  def create
    @feedbacks = Feedback.new(my_params)
    if @feedbacks.save
      redirect_to student_dashboard_path
    else
      render :new
    end
  end

  private
  def my_params
    params.require(:feedback).permit(:course_name,:message,:Student_name)
  end

end
