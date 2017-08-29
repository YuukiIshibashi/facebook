class RemoveTitleToTopics < ActiveRecord::Migration[5.1]
  def change
    remove_column :topics, :title, :string
  end
end
