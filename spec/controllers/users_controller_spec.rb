require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:redirect)
    end
  end

end
