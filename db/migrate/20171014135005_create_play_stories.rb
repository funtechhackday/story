class CreatePlayStories < ActiveRecord::Migration[5.1]
  def change
    create_table :play_stories do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
