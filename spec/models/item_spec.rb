require 'rails_helper'

RSpec.describe Item, type: :model do
    let(:item) { Item.create!(name: "Hello", user: "user@bloc.com") }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_least(5) }
  
  describe "attributes" do
    it "has a name attribute" do
      expect(item).to have_atttributes(name: name, user: "user@bloc.com")
    end
  end
  
end
