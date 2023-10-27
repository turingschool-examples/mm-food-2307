require 'rails_helper'

RSpec.describe "Foods Index Page" do
  describe "As a visitor" do
    describe "When I submit a search from the root url" do
      it "I am routed to the foods index page" do

        visit "/"

        fill_in "q", with: "sweet potatoes"
        click_on "Search"

        expect(current_path).to eq("/foods")
      end
    end
  end
end