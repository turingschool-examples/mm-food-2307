require 'rails_helper'

RSpec.describe 'Ingredient Search' do
  describe 'user can search for ingredient' do
    it 'allows users to search for ingredient to retrieve a list of the ten most relevant foods that include that ingredient' do
      visit root_path

      fill_in :query, with: 'cheddar cheese'
      click_button 'Search'

      expect(page.status_code).to eq 200
      expect(current_path).to eq(root_path)
      expect(page).to have_content('cheddar cheese')
    end
  end
end