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

    it 'when I search for a food item I see a list of ten foods that contain that food with details for each', :vcr do
      visit '/'
  
      fill_in :q, with: 'sweet potatoes'
  
      click_button 'Search'

      within('#first10') do
        expect(page).to have_content('First 10 Results:')
        # expect(page).to have_content('1.')
        expect(page).to have_content('GTIN/UPC Code: 8901020020844')
        expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM')
        expect(page).to have_content('Ingredients: ORGANIC SWEET POTATOES.')
        expect(page).to have_content('GTIN/UPC Code: 757404000104')
        # expect(page).to have_content('10.')

        # expect(page).to_not have_content('11.')
        # How do you test for numbers in an ordered list? 
      end
    end
  end
end