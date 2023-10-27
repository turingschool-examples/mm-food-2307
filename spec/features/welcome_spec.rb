require 'rails_helper'

RSpec.describe "Welcome Page" do
  it "When I fill out the search form and click 'search', I should be taken to the '/foods' page" do
    visit "/"

    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq "/foods"

    expect(page).to have_content("Dishes with sweet potatoes")
    expect(page).to have_content("something")
    expect(page).to have_content("something")
    expect(page).to have_content("something")
  end
end