require 'rails_helper'

RSpec.describe "Landing Page", :vcr do
  describe "When I visit '/'" do
    it "has a form to search for foods" do
      visit '/'

      expect(page).to have_content("Ingredient Search")
      expect(page).to have_field(:q)
    end

    it "redirects you to '/foods' when you click the search button" do
      visit '/'

      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq('/foods')
    end
  end
end