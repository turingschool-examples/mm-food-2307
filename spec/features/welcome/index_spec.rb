require "rails_helper"

feature "Welcome" do
  it "has a search bar" do
    visit '/'

    expect(page).to have_button("Search")
  end

  it "can search for a keyword" do
    visit '/'

    fill_in :q, with: 'sweet potato'
    click_button 'Search'

    expect(page).to have_current_path('/foods?q=sweet+potato&commit=Search')
  end

end