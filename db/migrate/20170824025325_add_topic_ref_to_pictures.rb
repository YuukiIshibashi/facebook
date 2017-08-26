class AddTopicRefToPictures < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :topic, foreign_key: true
  end
end
