class ChangeColumnType < ActiveRecord::Migration[5.0]
  def change
  	change_column :orders, :address1, :string

  end
end
