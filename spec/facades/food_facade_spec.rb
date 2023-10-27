require "rails_helper"

RSpec.describe FoodFacade do
  it "returns a list of food data" do
    foods = FoodFacade.search_ingredients("cinnamon")

    expect(foods).to be_an(Array)
    expect(foods.first).to be_a(FoodData)
  end
end