require "rails_helper"

feature "Foods" do
  describe "show" do
    it "shows food attributes" do
      visit '/'
  
      fill_in :q, with: 'sweet potatos'
      click_button 'Search'
      
      save_and_open_page
      expect(page).to have_content('Total hits')
    end
  end
end