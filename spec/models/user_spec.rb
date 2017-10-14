require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:user_authentications).dependent(:destroy) }
  it { should have_many(:actors).dependent(:destroy) }
end
