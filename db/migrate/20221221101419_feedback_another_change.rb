class FeedbackAnotherChange < ActiveRecord::Migration[6.0]
  def change
    add_column :feedbacks, :Student_name, :string
  end
end
