class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments, id: :integer do |t|
      t.text :content
      # t.references :topic, foreign_key: true
      # t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
