class StudentController < ApplicationController
  before_action :authenticate_student!
  def dashboard
  end
end
