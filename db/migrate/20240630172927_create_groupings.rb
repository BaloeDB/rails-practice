class CreateGroupings < ActiveRecord::Migration[7.1]
  def change
    create_table :groupings do |t|
      t.string :name

      t.timestamps
    end
  end
end
