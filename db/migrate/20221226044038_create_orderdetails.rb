class CreateOrderdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :orderdetails do |t|
      t.integer :sid
      t.integer :course_id
      t.string :sname
      t.string :semail
      t.integer :smobile

      t.timestamps
    end
  end
end
