require 'rails_helper'

RSpec.describe 'Foods INdex page', :vcr do
  describe "When I visit '/foods'" do
    it " fill in the search form with 'sweet potatoes'" do
      visit '/'

      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq('/foods')

      expect(page).to have_content("Count of search results: 56663")

      within("#food-8901020020844") do 
        expect(page).to have_content("GTIN/UPC code: 8901020020844")
        expect(page).to have_content("Description: SWEET POTATOES")
        expect(page).to have_content("Brand owner: NOT A BRANDED ITEM")
        expect(page).to have_content("ORGANIC SWEET POTATOES")
      end
    end
  end
end