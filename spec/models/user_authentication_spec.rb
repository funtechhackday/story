require 'rails_helper'

RSpec.describe UserAuthentication, type: :model do
  it {should belong_to(:user)}
end
