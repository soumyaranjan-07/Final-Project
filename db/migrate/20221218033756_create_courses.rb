class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :duration

      t.timestamps
    end
  end
end
