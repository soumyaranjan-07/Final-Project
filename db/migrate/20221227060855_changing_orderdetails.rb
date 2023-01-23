class ChangingOrderdetails < ActiveRecord::Migration[6.0]
  def change
    remove_column :orderdetails, :mobile, :bigint
    remove_column :orderdetails, :created_at, :datetime
    remove_column :orderdetails, :updated_at, :datetime
  end
end
