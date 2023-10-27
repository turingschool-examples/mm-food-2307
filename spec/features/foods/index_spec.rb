require 'rails_helper'

RSpec.describe "Foods Index Page" do
  describe "As a visitor" do
    describe "When I submit a search from the root url" do
      it "I am routed to the foods index page" do

        visit "/"

        fill_in "q", with: "sweet potatoes"
        click_on "Search"

        expect(current_path).to eq("/foods")
      end
    end

    it "I see a number representing the total results found" do

      visit "/"

      fill_in "q", with: "sweet potatoes"
      click_on "Search"

      within('.results') do
        expect(page).to have_content("Total results found: 56663")
      end
    end

    it "There are 10 foods matching the search displayed witht their attributes" do

      visit "/"

      fill_in "q", with: "sweet potatoes"
      click_on "Search"

      expect(all('section').count).to eq(10)
    end
  end
end