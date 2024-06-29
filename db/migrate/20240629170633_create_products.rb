class CreateProducts < ActiveRecord::Migration[7.1]
  def up
    create_table :products do |t|
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end

  def down
    drop_table :products
  end
end
