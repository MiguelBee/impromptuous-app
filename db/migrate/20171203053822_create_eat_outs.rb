class CreateEatOuts < ActiveRecord::Migration[5.0]
  def change
    create_table :eat_outs do |t|
      t.integer :zipcode
      t.integer :radius

      t.timestamps
    end
  end
end
