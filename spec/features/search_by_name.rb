require 'rails_helper'

RSpec.describe 'Food Search' do
  describe 'Serach' do
    it 'allows user to search by name' do
      visit root_path

      fill_in :search, with: 'sweet potatoes'
      click_button 'Search'

      expect(page.status_code).to eq 200
      # expect(page).to have_content("Senator Bernard Sanders was found!")
      # expect(page).to have_content("SenSanders")
    end
  end
end