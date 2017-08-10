class ChangeZipToAddress < ActiveRecord::Migration[5.0]
  def change
  	rename_column :orders, :zipcode, :address
  end
end
