require 'rails_helper'

RSpec.describe PlayStory, type: :model do
  it{ should have_many(:characters).dependent(:destroy) }
  it{ should have_many(:character_speeches).dependent(:destroy) }
end
