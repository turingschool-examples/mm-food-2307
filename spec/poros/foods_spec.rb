require 'rails_helper'

RSpec.describe Food do
  describe "initialize" do
    it "creates a Food object" do
      foods_data = {
        gtinUpc: "070560951975",
        description: "SWEET POTATOES",
        brandOwner: "The POTATO Company",
        ingredients: "Nothin but taters"
      }

      food = Food.new(foods_data) 
      expect(food).to be_a Food
      expect(food.code).to eq(foods_data[:gtinUpc])
      expect(food.description).to eq(foods_data[:description])
      expect(food.brand_owner).to eq(foods_data[:brandOwner])
      expect(food.ingredients).to eq(foods_data[:ingredients])
    end
  end
  
end