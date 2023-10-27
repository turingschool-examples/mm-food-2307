require 'rails_helper'

describe FoodDataService do
  describe "#food_search" do
    it "returns the a list of food that matches the search query" do
      q = "sweet potatoes"
      food_list = FoodDataService.new.food_search(q)
      expect(food_list).to be_a Hash
      expect(food_list[:totalHits]).to eq(55556)
      expect(food_list[:foodSearchCriteria][:query]).to eq(q)
      expect(food_list[:foods]).to be_an Array 
      expect(food_list[:foods][0]).to be_a Hash
      expect(food_list[:foods][0][:gtinUpc]).to eq("8901020020844")
    end
  end
end