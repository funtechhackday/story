require 'rails_helper'

RSpec.describe Actor, type: :model do
  it { should belong_to(:user) }
  it { should have_one(:play_actor) }
end
