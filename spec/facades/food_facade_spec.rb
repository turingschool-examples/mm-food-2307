require 'rails_helper'

describe FoodsFacade do
  describe "#food_search" do
    it "returns the a list of food that matches the search query" do
      q = {q: "sweet potatoes"}
      facade = FoodsFacade.new(q).food_search
      expect(facade).to be_an Array
      expect(facade[0]).to be_a Food
      expect(facade.count).to eq(10)
    end
  end
  describe "#total_results_from_search" do
    it "returns the a list of food that matches the search query" do
      q = {q: "sweet potatoes"}
      facade = FoodsFacade.new(q).total_results_from_search
      expect(facade).to be_an Integer
      expect(facade).to eq(55556)
    end
  end
end