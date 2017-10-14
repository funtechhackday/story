class CreatePlayActors < ActiveRecord::Migration[5.1]
  def change
    create_table :play_actors do |t|
      t.belongs_to :play_story, foreign_key: true
      t.belongs_to :character, foreign_key: true
      t.belongs_to :actor, foreign_key: true

      t.timestamps
    end
  end
end
