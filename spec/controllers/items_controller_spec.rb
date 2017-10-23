require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:item) { Item.create!(name: "Hello", user: "test@bloc.com") }
  
  describe "POST create" do
    it "returns http redirect" do
      expect(response).to redirect_to(new_session_path)
    end
    
    it "increases the number of Post by 1" do 
      expect { post :create, current_user, post { name:  
    end
      
  end 
end

# Defining parameters, expecting, 