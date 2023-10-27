require 'rails_helper'

RSpec.describe 'Ingredient Search' do
  describe 'happy path' do
    it 'allows users to search for ingredient to retrieve a list of the ten most relevant foods that include that ingredient' do
      json_response = File.read('spec/fixtures/ingredients_search.json')
      stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search.json").to_return(status: 200, body: json_response)

      visit root_path

      fill_in :q, with: 'cheddar cheese'
      click_button 'Search'

      expect(page.status_code).to eq 200
      expect(current_path).to eq(food_path)
      expect(page).to have_content('cheddar cheese')
    end
  end
end