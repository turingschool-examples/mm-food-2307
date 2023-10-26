require 'rails_helper'

RSpec.describe 'welcome controller' do
  describe "" do
    it "" do
      visit '/'
      expect(page).to have_content("Search")
      fill_in 'q', with: 'cheddar cheese'
      click_button 'Search'
      expect(current_path).to eq('/foods')
      expect(page).to have_content("cheddar cheese")
    end
  end
end