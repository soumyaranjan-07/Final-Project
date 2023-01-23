class CreateLessions < ActiveRecord::Migration[6.0]
  def change
    create_table :lessions do |t|
      t.string :l_name
      t.string :l_desc
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
