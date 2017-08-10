class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    rename_table :prompts, :orders
   end
end
