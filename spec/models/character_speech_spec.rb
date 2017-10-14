require 'rails_helper'

RSpec.describe CharacterSpeech, type: :model do
  it {should belong_to(:play_story)}
  it {should belong_to(:character)}
end
