require "rails_helper"

RSpec.describe FoodData do
  it "exists and has attributes" do
    data = {
      fdcId: 12345,
      description: "Cinnamon",
      brandOwner: "365",
      ingredients: "Cinnamon",
      gtinUpc: "123456789"
    }
    food_data = FoodData.new(data)

    expect(food_data).to be_a(FoodData)
    expect(food_data.code).to eq(12345)
    expect(food_data.description).to eq("Cinnamon")
    expect(food_data.brand_owner).to eq("365")
    expect(food_data.ingredients).to eq("Cinnamon")
    expect(food_data.gtin).to eq("123456789")
  end
end