class AddUserRefToPosts < ActiveRecord::Migration[7.1]
  def self.up
    add_reference :posts, :user, null: false, foreign_key: true
  end

  def self.down
    remove_reference :posts, :user
  end
end
