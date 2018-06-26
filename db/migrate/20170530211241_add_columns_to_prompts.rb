lass AddColumnsToPrompts < ActiveRecord::Migration[5.0]
  def change
  	add_column :prompts, :email, :string
  	add_column :prompts, :credit_card, :integer
  end
end
