require "rails_helper"

RSpec.describe FoodDataService do
  describe "instance methods" do
    describe "#get_foods_search" do
      it "returns searched food data" do
        VCR.use_cassette("get foods search") do
          search = FoodDataService.new.get_foods_search("sweet potatoes")

          expect(search).to be_a Hash
          expect(search[:totalHits]).to be_an(Integer)
          food_data = search[:foods].first

          expect(food_data).to have_key(:fdcId)
          expect(food_data[:fdcId]).to be_an(Integer)

          expect(food_data).to have_key(:description)
          expect(food_data[:description]).to be_a(String)

          expect(food_data).to have_key(:gtinUpc)
          expect(food_data[:gtinUpc]).to be_a(String)

          expect(food_data).to have_key(:brandOwner)
          expect(food_data[:brandOwner]).to be_a(String)

          expect(food_data).to have_key(:ingredients)
          expect(food_data[:ingredients]).to be_a(String)
        end
      end
    end
  end
end