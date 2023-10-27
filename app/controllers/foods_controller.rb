class FoodsController < ApplicationController
  def index
    query = params[:q]
    @foods = FoodFacade.search_ingredients(query)
    # binding.pry
  end
end