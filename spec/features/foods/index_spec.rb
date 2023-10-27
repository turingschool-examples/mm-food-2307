require 'rails_helper'

RSpec.describe "Foods Index", type: :feature do
  describe "When I visit the foods index page", :vcr do
    before(:each) do
      visit root_path

      fill_in :q, with: "sweet potatoes"
      click_button :commit
    end

    it "displays up to 10 results of my searched item" do
      expect(current_path).to eq(foods_path)

      expect(page).to have_css(".food-item", count: 10)
    end

    it "displays the description, gtin, brand owner, and ingredients for each item" do
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