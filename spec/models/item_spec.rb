require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:name) { create(Faker::RickAndMorty.character) }
  let(:user) { create(:user) }
  let(:item) { create(:item, user: user) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_length_of(:name).is_at_least(3) }
  
  describe "attributes" do
    it "has a name attribute" do
      expect(item).to have_atttributes(name: item.name, user: user)
    end
  end
  
end
