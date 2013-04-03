class AddQuantityToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :quantity, :integer
  	add_index :products, :quantity
  end
end
