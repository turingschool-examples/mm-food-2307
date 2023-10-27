class SearchController < ApplicationController
  def index
    @foods = FoodFacade.new
                       .food_search(params[:keyword])
  end
end