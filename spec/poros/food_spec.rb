require 'rails_helper'

RSpec.describe Food do
  it "exists" do
    food_hash = {
      :fdcId=>983525,
      :description=>"SWEET POTATOES",
      :dataType=>"Branded",
      :gtinUpc=>"8901020020844",
      :publishedDate=>"2020-06-26",
      :brandOwner=>"NOT A BRANDED ITEM",
      :ingredients=>"ORGANIC SWEET POTATOES."
    }

    food = Food.new(food_hash)

    expect(food).to be_an_instance_of Food
    expect(food.gtin_code).to eq(food_hash[:gtinUpc])
    expect(food.description).to eq(food_hash[:description])
    expect(food.brand_owner).to eq(food_hash[:brandOwner])
    expect(food.ingredients).to eq(food_hash[:ingredients])
  end
end