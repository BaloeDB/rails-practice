# This migration is not needed. Foreign_key constraints get added by default.
class AddForeignKeyConstraintToOrders < ActiveRecord::Migration[7.1]
  def up
    # Remove if already there - for the sake of the exercise.
    remove_foreign_key :orders, :products
    remove_foreign_key :orders, :users

    add_foreign_key :orders, :products
    add_foreign_key :orders, :users
  end

  def down
    remove_foreign_key :orders, :products
    remove_foreign_key :orders, :users
  end
end
