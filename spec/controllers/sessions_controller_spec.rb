require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

describe 'POST #create' do
  context 'when password is invalid' do
    it 'renders the page with error' do
    user = FactoryGirl.create(:user)
      post :create, session: { email: user.email, password: 'invalid' }

      expect(response).to redirect_to('/login')
      end
  end

end
end
