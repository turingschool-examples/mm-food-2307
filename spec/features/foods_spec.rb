
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients

require 'rails_helper'

RSpec.describe "Food Index Page", type: :feature do
  describe "as a user, when I visit /" do
    before(:each) do
      visit root_path
    end

    it "and I fill in the search form with sweet potatoes", :vcr do
      fill_in :q, with: "sweet potatoes"
      click_button("Search")
      expect(current_path).to eq("/foods")
    end
  end
end