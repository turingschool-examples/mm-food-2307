# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients

# Note: You can consider every result you get from the FoodData API to be a valid result for your search even if the ingredient list for the food is empty.
require 'rails_helper'

RSpec.describe 'foods index page' do
  describe "when I search on the welcome page and type in a specific item" do
    it "and search for a specific item, it takes me to the /foods page" do
      visit '/'
      expect(page).to have_content("Search")
      fill_in 'q', with: 'sweet potatoes'
      click_button 'Search'
      expect(current_path).to eq('/foods')
      expect(page).to have_content("Total Search Items Returned: 55556")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("GTIN/UPC Code: 8901020020844")
      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("GTIN/UPC Code: 757404000104")
      expect(page).to have_content("Brand Owner: Southern Produce Distributors, Inc.")
      expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")
    end
  end
end