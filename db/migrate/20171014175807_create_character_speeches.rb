class CreateCharacterSpeeches < ActiveRecord::Migration[5.1]
  def change
    create_table :character_speeches do |t|
      t.belongs_to :play_story, foreign_key: true
      t.belongs_to :character, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end
