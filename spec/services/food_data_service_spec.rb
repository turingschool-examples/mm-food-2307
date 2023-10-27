require "rails_helper"

RSpec.describe FoodDataService do
  describe "Service" do
    it "returns food data from API" do
      service = FoodDataService.new
      response = service.search_ingredients("cinnamon")

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