class AddUniqueConstraintToEmailOfUsers < ActiveRecord::Migration[7.1]
  def up
    # This only works for Postgresql
    # add_unique_constraint :users, [:email]

    remove_index :users, [:email]
    add_index :users, [:email], unique: true
  end

  def down
    # This only works for Postgresql
    # drop_unique_constraint :users, [:email]

    remove_index :users, [:email]
    add_index :users, [:email], unique: false
  end
end
