class AddGroupingRefToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :grouping, foreign_key: true
  end
end
