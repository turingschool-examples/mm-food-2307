require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    attributes = {:fdcId=>983525,
    :description=>"SWEET POTATOES",
    :dataType=>"Branded",
    :gtinUpc=>"8901020020844",
    :publishedDate=>"2020-06-26",
    :brandOwner=>"NOT A BRANDED ITEM",
    :ingredients=>"ORGANIC SWEET POTATOES.",
    :marketCountry=>"United States",
    :foodCategory=>"Pre-Packaged Fruit & Vegetables",
    :modifiedDate=>"2020-04-13",
    :dataSource=>"LI",
    :servingSizeUnit=>"g",
    :servingSize=>133.0,
    :householdServingFullText=>"133 GRM",
    :tradeChannels=>["NO_TRADE_CHANNEL"],
    :allHighlightFields=>"<b>Ingredients</b>: ORGANIC <em>SWEET</em> <em>POTATOES</em>.",
    :score=>948.3431}

    food_item = Food.new(attributes)
    expect(food_item).to be_a Food
    expect(food_item.description).to eq("SWEET POTATOES")
    expect(food_item.number).to eq("8901020020844")
    expect(food_item.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(food_item.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end