require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:my_item) { create(:item) }
  let(:my_user) { create(:user) }
  let(:my_post) { create(:post, name: my_name) }
  
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_length_of(:item).is_at_least(5) }
  
  describe "attributes" do
    it "has a name attribute" do
      expect(item).to have_atttributes(name: my_name  )
    end
  end
  
end
