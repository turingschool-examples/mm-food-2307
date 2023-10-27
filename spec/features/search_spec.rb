require "rails_helper"

RSpec.describe "Search for food" do
  describe "As a user" do
    it "I can search for food" do
      visit root_path

      fill_in :q, with: "cinnamon"
      click_on "Search"

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("First Ten Items")
      expect(page).to have_content("CINNAMON")
      expect(page).to have_content("Brand: Finlay Extracts & Ingredients USA, Inc.")
      expect(page).to have_content("GTIN: 892327002122")
      expect(page).to have_content("Total Items: 15503")
      end
    end

    it "I cant search for food if query is blank" do
      visit root_path

      fill_in :q, with: ""
      click_on "Search"

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Please enter an ingredient to search for")
    end
end