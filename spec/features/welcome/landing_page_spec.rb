require 'rails_helper'

RSpec.describe "Landing Page", type: :feature do
  describe "When I visit the landing page" do
    it "I see a form to fill in and a search button that takes me to the /foods page" do
      visit root_path

      expect(page).to have_content("Ingredient Search")
      expect(page).to have_field :q
      expect(page).to have_button :commit

      click_button :commit

      expect(page).to have_current_path("/foods?q=&commit=Search")
    end
  end
end