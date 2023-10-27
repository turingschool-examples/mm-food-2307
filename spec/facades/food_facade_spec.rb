require 'rails_helper'

RSpec.describe FoodFacade do
  it "can initialize", :vcr do
    facade = FoodFacade.new("sweet potatoes")

    expect(facade).to be_an_instance_of FoodFacade
    expect(facade.items).to be_an Array
  end
end