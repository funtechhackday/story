class CreateUserAuthentications < ActiveRecord::Migration[5.1]
  def change
    create_table :user_authentications do |t|
      t.belongs_to :user, foreign_key: true
      t.string :provider
      t.string :uid
      t.string :token

      t.timestamps
    end
  end
end
