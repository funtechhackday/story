class Character < ApplicationRecord
  belongs_to :play_story
  has_one :play_actor, dependent: :destroy
end
