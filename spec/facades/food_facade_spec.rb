require 'rails_helper'

RSpec.describe FoodFacade, test: :model do
  describe 'class methods' do
    it '#search_food', :vcr do
      foods = FoodFacade.search_food("sweet potatoes")

      expect(foods[0].code).to eq("8901020020844")
      expect(foods[0].description).to eq('Sweet Potatoes')
      expect(foods[0].brand).to eq('Not A Branded Item')
      expect(foods[0].ingredients).to eq('Organic Sweet Potatoes.')
    end
    
    it '#total_hits', :vcr do
      hits = FoodFacade.total_hits("sweet potatoes")

      expect(hits).to eq(56663)
    end
  end
end