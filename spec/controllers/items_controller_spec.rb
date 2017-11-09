require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:my_item) { create(:item, current_user) }
  let(:my_user) { create(:user, sign_in) }
  let(:my_post) { create(:post, name: my_name) }
  
  describe "POST create" do
    it "returns http redirect" do
      expect(response).to redirect_to(new_user_session_path)
    end
    
    it "increases the number of Post by 1" do 
      expect{ post :create, item: { name: Faker::RickAndMorty.quote } }.to change(Item,:count).by(1)
    end
    
    it "assigns the new post to @post" do
      post :create, item: {name: Faker::RickAndMorty.quote}
      expect(assigns(:post)).to eq Item.last
    end
    
    it "redirects to the new post" do
      post :create, item: {name: Faker::RickAndMorty.quote}
      expect(response).to redirect_to [my_item, Item.last]
    end
  end
end

# Defining parameters, expecting, 