class AddColumnToOrders < ActiveRecord::Migration[5.0]
  def change
  		add_column :orders, :radius, :integer
  end
end
