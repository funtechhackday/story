require 'rails_helper'

RSpec.describe Character, type: :model do
  it {should belong_to(:play_story)}
end
