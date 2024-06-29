class CreateOrders < ActiveRecord::Migration[7.1]
  def up
    create_table :orders, primary_key: [:user_id, :product_id, :created_at] do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end

  def down
    drop_table :orders
  end
end
