class AddColOrderdetails < ActiveRecord::Migration[6.0]
  def change
    add_column :orderdetails, :cname, :string
  end
end
