require 'rails_helper'

feature 'Search for food' do
  describe "As a user when I visit '/'" do
    it 'I can search for a food item', :vcr do
      visit '/'

      fill_in :q, with: 'sweet potatoes'

      click_button 'Search'

      expect(current_path).to eq(foods_path)
    end

    it 'when I search for a food item I see the total number of items returned by the search', :vcr do
      visit '/'
  
      fill_in :q, with: 'sweet potatoes'
  
      click_button 'Search'
  
      expect(page).to have_content('sweet potatoes Search')
      expect(page).to have_content('Total Results: 56663')
    end

    it 'when I search for a food item I see a list of ten foods that contain that food with details for each' do, :vcr do
      
    end
  end
end