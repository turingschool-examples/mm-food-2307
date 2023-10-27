require 'rails_helper'

RSpec.describe 'Foods Service API Call', :vcr do
  describe 'class methods' do
    it 'returns a list of foods by a query parameter' do
      query = 'sweet potatoes'
      search = FoodsService.new.search_foods(query)

      expect(search).to be_a(Hash)

      expect(search).to have_key(:totalHits)
      expect(search[:totalHits]).to be_a(Integer)

      expect(search).to have_key(:foods) 
      expect(search[:foods]).to be_an(Array)
    end
  end
end