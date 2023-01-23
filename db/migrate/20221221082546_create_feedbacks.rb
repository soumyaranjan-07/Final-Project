class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :course_id
      t.string :message

      t.timestamps
    end
  end
end
