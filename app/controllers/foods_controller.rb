class FoodsController < ApplicationController
  def index
    @searched = params[:q]
    @foods = FoodFacade.search_food(params[:q])
    @count = FoodFacade.total_hits(params[:q])
  end
end