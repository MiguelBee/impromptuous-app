class RemoveColumnFromOrders < ActiveRecord::Migration[5.0]
  def change
  	remove_column :orders, :cold
  	remove_column :orders, :credit_card
  end
end
