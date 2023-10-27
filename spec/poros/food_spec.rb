require 'rails_helper'

RSpec.describe Food do
  describe "attributes" do
    it "has readable gtin, description, brand, and ingredients attributes" do
      data = {gtinUpc: 123456, description: "food", brandOwner: "big brand", ingredients: "food stuff"}
      food = Food.new(data)

      expect(food.gtin).to eq(123456)
      expect(food.description).to eq("food")
      expect(food.brand).to eq("big brand")
      expect(food.ingredients).to eq("food stuff")
    end
  end
end