class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.belongs_to :user, foreign_key: true
      t.string :uid
      t.string :provider
      t.string :name
      t.string :avatar

      t.timestamps
    end
  end
end
