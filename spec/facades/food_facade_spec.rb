require 'rails_helper'

RSpec.describe FoodFacade do
  it "can initialize", :vcr do
    facade = FoodFacade.new("sweet potatoes")

    expect(facade).to be_an_instance_of FoodFacade
    expect(facade.total_hits).to be_an Integer
    expect(facade.foods).to be_an Array
  end
end