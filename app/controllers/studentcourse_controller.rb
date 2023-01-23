class StudentcourseController < ApplicationController
  def mycourse
    @course=Orderdetail.find_by_sql ["Select course_id from orderdetails WHERE sid like ?",current_student.id] 
   
    course1=Array.new
    @course.each {|c| course1<<c.course_id}
  
    @course_all=Array.new
    course1.each do |v|
    @cour=Course.find_by_sql ["Select * from courses WHERE id like ?",v]
    @course_all.concat(@cour)
    end
    
    
  end
  def lesson
    @course=Course.find(params[:cr_id])
    
  end
end
