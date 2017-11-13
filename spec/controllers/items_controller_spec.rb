require 'rails_helper'
require 'faker'
RSpec.describe ItemsController, type: :controller do
  let(:my_user) { create(:user) }
  let(:my_item) { create(:item, user: my_user) }
  let(:name) { Faker::RickAndMorty.character }
  
  context "user making a item on their list"
  before do
    @user = my_user
    sign_in @user
  end
  
  describe "POST create" do
    it "returns http redirect" do
      expect(response).to redirect_to root_path
    end
    
    it "increases the number of Post by 1" do 
      expect{ post :create, user_id: @user.id, item: { name: name } }.to change(Item, :count).by(1)
    end
    
    it "assigns the new post to @item" do
      post :create, user_id: @user.id, item: { name: name }
      expect(assigns(:item)).to eq Item.last
    end
    
    it "redirects to the new post" do
      post :create, user_id: @user.id, item: { name: name }
      expect(response).to redirect_to root_path
    end
  end
end

# Defining parameters, expecting, 