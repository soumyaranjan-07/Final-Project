class AddColOrderdetailsPrice < ActiveRecord::Migration[6.0]
  def change
    add_column :orderdetails, :cprice, :integer
  end
end
