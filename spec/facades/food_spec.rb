require "rails_helper"

RSpec.describe FoodFacade do
  it "returns a list of food data" do
    foods = FoodFacade.search("sweet potatoes")

    expect(foods).to be_an(Array)
    expect(foods.first).to be_a(Food)
  end
end