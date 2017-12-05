class AddDeliveryTable < ActiveRecord::Migration[5.0]
  def change
  	create_table :delivery do |t|
  		t.string :address1
  		t.string :address2
  		t.string :city
  		t.string :state

  		t.timestamp
  	end
  end
end
