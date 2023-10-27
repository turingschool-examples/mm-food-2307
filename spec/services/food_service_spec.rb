require 'rails_helper'

RSpec.describe FoodService do
  it 'exists' do
    item_s = FoodService.new
    expect(item_s).to be_a FoodService
  end

  context 'instance methods' do
    context '#search_food', :vcr do
      it 'connects to the query endpoint for whatever is passed in' do
        service = FoodService.new
        results = service.search_food("sweet potatoes")

        expect(results).to be_a Hash
        expect(results[:foods]).to be_an Array
        expect(results[:foods].count).to eq(50)
        expect(results[:foods][0][:gtinUpc]).to be_an String
        expect(results[:foods][0][:description]).to be_a String
        expect(results[:foods][0][:brandOwner]).to be_a String
        expect(results[:foods][0][:ingredients]).to be_a String
      end
    end
  end
end