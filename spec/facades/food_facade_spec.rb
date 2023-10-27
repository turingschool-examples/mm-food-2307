require "rails_helper"

RSpec.describe FoodFacade do
  before :each do
    @facade = FoodFacade.new("sweet potatoes")
  end

  describe "instance methods" do
    describe "#result_count" do
     it "returns count of results" do
      VCR.use_cassette("result count") do
        expect(@facade.result_count).to be_an(Integer)
        expect(@facade.result_count).to eq(56663)
      end
     end
    end

    describe "result_foods" do
      it "returns 10 food objects" do
        VCR.use_cassette("food results") do
          expect(@facade.result_foods).to be_an(Array)
          expect(@facade.result_foods.first).to be_a(Food)
          expect(@facade.result_foods.count).to eq(10)
        end
      end
    end
  end
end