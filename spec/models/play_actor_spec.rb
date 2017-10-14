require 'rails_helper'

RSpec.describe PlayActor, type: :model do
  it { should belong_to(:play_story) }
  it { should belong_to(:character) }
  it { should belong_to(:actor) }
end
