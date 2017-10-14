class PlayStory < ApplicationRecord
  has_many :characters, dependent: :destroy
  has_many :character_speeches, dependent: :destroy
  has_many :play_actors, dependent: :destroy
end
