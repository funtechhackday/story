class PlayActor < ApplicationRecord
  belongs_to :play_story
  belongs_to :character
  belongs_to :actor
end
