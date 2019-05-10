class CreatePrompts < ActiveRecord::Migration[5.0]
  def change
    create_table :prompts do |t|
    	t.boolean :vegeterian
    	t.integer :how_many_to_feed
    	t.integer :zipcode
    	t.boolean :cold
    	t.integer :max_amount

      t.timestamps
    end
  end
end
