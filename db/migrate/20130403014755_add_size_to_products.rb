class AddSizeToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :size, :string
  	add_index :products, :size
  end
end
