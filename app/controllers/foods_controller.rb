class FoodsController < ApplicationController
  def index
    query = params[:q]

    if query.empty?
        redirect_to root_path, alert: "Please enter an ingredient to search for"
    else
      @foods = FoodFacade.search_ingredients(query)
      @total_hits = FoodFacade.total_hits(query)
      # binding.pry
    end
  end
end