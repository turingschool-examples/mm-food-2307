require 'rails_helper'

RSpec.describe "Welcome Page" do
  it "When I fill out the search form and click 'search', I should be taken to the '/foods' page" do
    visit "/"

    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq "/foods"

    expect(page).to have_content("First 10 Results for 'sweet potatoes'")
    expect(page).to have_content("Name: SWEET POTATOES")
    expect(page).to have_content("ID: 8901020020844")
    expect(page).to have_content("Brand: NOT A BRANDED ITEM")
    expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")

    expect(page).to have_content("Name: SWEET POTATOES")
    expect(page).to have_content("ID: 076700002019")
    expect(page).to have_content("Brand: John W. Taylor Packing Co. Inc")
    expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")

    expect(page).to have_content("Name: SWEET POTATOES")
    expect(page).to have_content("ID: 070560951975")
    expect(page).to have_content("Brand: The Pictsweet Company")
    expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")
  end
end