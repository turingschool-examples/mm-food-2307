require 'rails_helper'

RSpec.describe 'the foods index page', type: :feature do
  describe 'When a user searches a food on the welcome page and is then taken to the foods index page' do

    it 'displays 10 relevant foods and their information', :vcr do
      visit root_path

      fill_in :q, with: "sweet potatoes"
      click_on "Search"

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("Searched: \"sweet potatoes\"")
      expect(page).to have_content("Results: 56,663")
      expect(page).to have_content('8901020020844')
      expect(page).to have_content('Sweet Potatoes', count: 17)
    end

    it 'returns to root path if nothing is input for search', :vcr do
      visit root_path

      click_on "Search"

      expect(current_path).to eq(root_path)
      expect(page).to have_content('Nothing to search, please try again.')
    end
  end
end