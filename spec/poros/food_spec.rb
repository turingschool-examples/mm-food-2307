require "rails_helper"

RSpec.describe Food do
  it "exists and has attributes" do
    data = {
      fdcId: 983525,
      description: "SWEET POTATOES",
      brandOwner: "NOT A BRANDED ITEM",
      ingredients: "",
      gtinUpc: "076700002019"
    }
    food_data = Food.new(data)

    expect(food_data).to be_a(Food)
    expect(food_data.fdc).to eq(983525)
    expect(food_data.description).to eq("SWEET POTATOES")
    expect(food_data.brand).to eq("NOT A BRANDED ITEM")
    expect(food_data.ingredients).to eq("")
    expect(food_data.upc).to eq("076700002019")
  end
end