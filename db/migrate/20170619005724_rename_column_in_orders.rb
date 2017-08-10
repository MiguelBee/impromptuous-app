class RenameColumnInOrders < ActiveRecord::Migration[5.0]
  def change
  	rename_column :orders, :address, :address1
  	add_column :orders, :address2, :string
  	add_column :orders, :city, :string
  	add_column :orders, :state, :string
  	add_column :orders, :zipcode, :integer
  end
end
