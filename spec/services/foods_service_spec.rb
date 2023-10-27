require 'rails_helper'

RSpec.describe FoodsService do
  describe "instance methods" do
    describe "#food_search" do
      it "returns hash from API call", :vcr do

        response = FoodsService.new.food_search("cheese")
        expect(response).to be_a Hash
        expect(response).to have_key :foods
        foods = response[:foods]
        expect(foods.first).to have_key :description
        expect(foods.first).to have_key :gtinUpc
        expect(foods.first).to have_key :ingredients
      end
    end
  end
end