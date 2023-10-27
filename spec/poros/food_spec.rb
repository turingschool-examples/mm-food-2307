require "rails_helper"

RSpec.describe Food do
  before(:each) do
    @food_data = {
      fdcId: 5028,
      description: "This is a food",
      gtinUpc: "730103857592917636",
      brandOwner: "NO BRAND OWNER",
      ingredients: "all the ingredients"
    }

    @food = Food.new(@food_data)
  end

  describe "#initialize" do
    it "creates a food object" do
      expect(@food).to be_a(Food)
      expect(@food.fdc_id).to eq(5028)
      expect(@food.description).to eq("This is a food")
      expect(@food.gtin_upc).to eq("730103857592917636")
      expect(@food.brand_owner).to eq("NO BRAND OWNER")
      expect(@food.ingredients).to eq("all the ingredients")
    end
  end
end