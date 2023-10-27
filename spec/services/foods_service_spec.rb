require 'rails_helper'

RSpec.describe FoodsService do
  before(:each) do
    @fs = FoodsService.new
  end

  it "exists" do
    expect(@fs).to be_an_instance_of FoodsService
  end

  it "can hit the /foods/search endpoint and provide a response", :vcr do
    response = @fs.search_foods("abalone")
    
    expect(response).to be_a Hash
    expect(response).to have_key(:totalHits)
    expect(response[:totalHits]).to be_an Integer
    expect(response).to have_key(:foods)
    expect(response[:foods]).to be_an Array

    food = response[:foods].first

    expect(food).to have_key(:description)
    expect(food[:description]).to be_a String
  end

end