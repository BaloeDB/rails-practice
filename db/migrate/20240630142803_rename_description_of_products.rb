class RenameDescriptionOfProducts < ActiveRecord::Migration[7.1]
  def change
    rename_column :products, :description, :product_description
  end
end
