class User < ApplicationRecord
  has_many :user_authentications, dependent: :destroy
  has_many :actors, dependent: :destroy

  after_commit :create_self_actor, on: :create

  private
  def create_self_actor
    auth = user_authentications.first!
    actors.create! uid: auth.uid, provider: auth.provider, name: self.name, avatar: self.avatar
  end
end
