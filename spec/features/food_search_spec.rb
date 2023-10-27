require "rails_helper"

RSpec.describe "Food Search", type: :feature do
  describe "when I visit '/'" do
    describe "I should see a search form" do
      describe "when I fill out the form with 'sweet potatoes' and click search" do
        it "I should be on '/foods', I should see a total of the number of items returned by the searchh, then i should see a list of ten foods that contain the ingredient 'sweet potatoes', and their GTIN/UPC code, description, brand owner, and ingredients" do
          VCR.use_cassette("ingredients search") do
            visit root_path

            expect(page).to have_button "Search"

            fill_in :q, with: "sweet potatoes"
            click_button "Search"

            expect(current_path).to eq(foods_path)

            expect(page).to have_content("Search Results: 56663")

            within("#983525") do
              expect(page).to have_content("GTIN/UPC code: 8901020020844")
              expect(page).to have_content("Description: SWEET POTATOES")
              expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
              expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")
            end

            within("#2440684") do
              expect(page).to have_content("GTIN/UPC code: 757404000104")
              expect(page).to have_content("Description: SWEET POTATOES")
              expect(page).to have_content("Brand Owner: Southern Produce Distributors, Inc.")
              expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")
            end
          end
        end
      end
    end
  end
end