class CreateProducts < ActiveRecord::Migration[7.1]
  def up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, scale: 2, precision: 10

      t.timestamps
    end
  end

  def down
    drop_table :products
  end
end
