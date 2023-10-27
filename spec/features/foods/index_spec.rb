require 'rails_helper'

RSpec.describe "Foods Index Page" do
  describe "As a visitor", :vcr do
    describe "When I submit a search from the root url" do
      it "I am routed to the foods index page" do

        visit "/"

        fill_in "q", with: "sweet potatoes"
        click_on "Search"

        expect(current_path).to eq("/foods")
      end
    end

    it "I see a number representing the total results found", :vcr do

      visit "/"

      fill_in "q", with: "sweet potatoes"
      click_on "Search"

      within('.results') do
        expect(page).to have_content("Total results found: 56663")
      end
    end

    it "There are 10 foods matching the search displayed witht their attributes", :vcr do

      visit "/"

      fill_in "q", with: "sweet potatoes"
      click_on "Search"

      expect(all('section').count).to eq(10)
    end

    it "The attributes for the 10 foods are displayed on the page", :vcr do
      visit "/"

      fill_in "q", with: "sweet potatoes"
      click_on "Search"

      within(".UPC8901020020844") do
        expect(page).to have_content("Description: SWEET POTATOES")
        expect(page).to have_content("Brand: NOT A BRANDED ITEM")
        expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")
      end
    end
  end
end