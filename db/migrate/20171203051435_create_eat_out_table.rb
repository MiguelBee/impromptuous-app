class CreateEatOutTable < ActiveRecord::Migration[5.0]
  def change
    create_table :eat_out do |t|
    	t.integer :zipcode
    	t.integer :radius
    end
  end
end
