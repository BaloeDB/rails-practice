class AddIndexToNameOfProducts < ActiveRecord::Migration[7.1]
  def up
    add_index :products, :name
  end

  def down
    remove_index :products, :name
  end
end
