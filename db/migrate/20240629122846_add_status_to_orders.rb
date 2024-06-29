class AddStatusToOrders < ActiveRecord::Migration[7.1]
  def up
    add_column :orders, :status, :string, default: "Processing"
  end

  def down
    remove_column :orders, :status
  end
end
