require 'rails_helper'
require 'faker'

RSpec.describe Item, type: :model do
  let(:name) { create(:name) }
  let(:user) { create(:user) }
  let(:item) { create(:item, name: name,  user: user) }
  
  
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_length_of(:name).is_at_least(3) }
end

