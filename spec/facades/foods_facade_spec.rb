require 'rails_helper'

RSpec.describe 'Foods Facade', :vcr do
  describe "Instance methods" do 
    it " returns the count of foods in the search" do 
      facade = FoodsFacade.new
      query = "sweet potatoes"

      expect(facade.searched_food_count(query)).to eq(56663)
    end

    it "returns a list of foods by a query parameter" do
      facade = FoodsFacade.new
      query = "sweet potatoes"

      expect(facade.food_search_results(query)).to be_an(Array)
      expect(facade.food_search_results(query).count).to eq(10)
      expect(facade.food_search_results(query).first).to be_a(Food)
    end
  end
end