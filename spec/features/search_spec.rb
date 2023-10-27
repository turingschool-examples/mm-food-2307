require "rails_helper"

RSpec.describe "Search for food" do
  describe "As a user" do
    it "I can search for food" do
      visit root_path

      fill_in :q, with: "sweet potatoes"
      click_on "Search"

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("First Ten Items")
      expect(page).to have_content("SWEET POTATOES")
      expect(page).to have_content("NOT A BRANDED ITEM")
      expect(page).to have_content("GTIN: 076700002019")
      expect(page).to have_content("Total Items: 56663")
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