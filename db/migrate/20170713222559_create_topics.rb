class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics, id: :integer do |t|
      # t.references :user, foreign_key: true
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
