class CharacterSpeech < ApplicationRecord
  belongs_to :play_story
  belongs_to :character
end
