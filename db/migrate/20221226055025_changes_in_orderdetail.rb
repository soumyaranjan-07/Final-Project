class ChangesInOrderdetail < ActiveRecord::Migration[6.0]
  def change
    remove_column :orderdetails, :smobile, :integer
    add_column :orderdetails, :mobile, :bigint
    add_column :orderdetails, :order_date, :date
  end
end
