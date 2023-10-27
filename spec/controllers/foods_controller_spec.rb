require "rails_helper"

RSpec.describe FoodsController do
  describe 'GET #index' do
    it "returns a list of food data" do
      get :index, params: {q: "cinnamon"}

      expect(response).to be_successful
      expect(response.status).to eq(200)
    end
  end
end