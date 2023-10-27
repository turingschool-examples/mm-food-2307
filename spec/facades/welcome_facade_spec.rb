require 'rails_helper'

RSpec.describe WelcomeFacade do
  describe '#ingredients' do
    it 'returns an array of Ingredient objects' do
      VCR.use_cassette('search_facade_members') do
        # Set up any necessary data, such as state
        state = 'CO'

        # Instantiate the facade
        search_facade = SearchFacade.new(state)

        # Call the `members` method
        members = search_facade.members

        # Expect that members is an array of Member objects
        expect(members).to be_an(Array)
        expect(members.first).to be_a(Member)
      end
    end
  end
end