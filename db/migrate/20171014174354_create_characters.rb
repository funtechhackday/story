class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.belongs_to :play_story, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
