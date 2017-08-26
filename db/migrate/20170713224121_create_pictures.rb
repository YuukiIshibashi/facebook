class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures, id: :integer do |t|
      t.string :image
      # t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
