require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:my_item) { Item.create!(name: "Hello", user: "test@bloc.com") }

  describe "POST #create" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  it "creates a new item"
  
  end
  

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end
end
