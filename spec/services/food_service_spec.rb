require "rails_helper"

describe FoodService do
  context 'class methods' do
    context '#food_search', :vcr do
      it 'returns movie data from keyword search' do
        search = FoodService.new.food_search('ham')
        expect(search).to be_a Hash
        expect(search[:foods]).to be_an Array
      end
    end
  end
end