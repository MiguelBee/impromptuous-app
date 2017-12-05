class DropTables < ActiveRecord::Migration[5.0]
  def change
  	drop_table :eat_out
  	drop_table :delivery
  end
end
