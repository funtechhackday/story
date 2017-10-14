class Actor < ApplicationRecord
  belongs_to :user
  has_one :play_actor, dependent: :destroy
end
