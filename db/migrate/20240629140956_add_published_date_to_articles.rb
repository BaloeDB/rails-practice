class AddPublishedDateToArticles < ActiveRecord::Migration[7.1]
  def up
    add_column :articles, :published_date, :date
  end

  def down
    remove_column :articles, :published_date
  end
end
