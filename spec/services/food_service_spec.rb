require "rails_helper"

RSpec.describe FoodService do
  describe "Service" do
    it "returns food from API" do
      service = FoodService.new
      response = service.search("sweet potatoes")

      expect(response).to be_a(Hash)
      expect(response[:foods]).to be_an(Array)
      expect(response[:foods].first).to be_a(Hash)
      expect(response[:foods].first).to have_key(:description)
      expect(response[:foods].first).to have_key(:gtinUpc)
      expect(response[:foods].first).to have_key(:brandOwner)
      expect(response[:foods].first).to have_key(:ingredients)
    end
  end
end