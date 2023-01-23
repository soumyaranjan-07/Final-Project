class FeedbackChange < ActiveRecord::Migration[6.0]
  def change
    add_column :feedbacks, :course_name, :string
    remove_course_id :feedbacks 
  end
end
