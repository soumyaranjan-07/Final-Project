class AdfeedbackController < ApplicationController
  before_action :admin_loggedin?
  def feedback
    @feedbacks = Feedback.all
  end
  def admin_loggedin?
    if session[:admin].nil?
      flash[:notice]="Login as an admin to continue"
      redirect_to admin_login_url
    end
  end
end
