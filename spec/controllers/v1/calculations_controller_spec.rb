require 'rails_helper'

RSpec.describe V1::CalculationsController, type: :controller do

  let(:valid_session) { {} }

  describe 'GET #fibonacci' do
    it 'return a success response' do
      get :fibonacci, params: {number: 5}, session: valid_session
      expect(response).to be_success
      expect(response.content_type).to eq('application/json')
    end

    it 'return correct type' do
      get :fibonacci, params: {number: 5}, session: valid_session
      expect(response.body).to eq("5")
    end
  end

end
