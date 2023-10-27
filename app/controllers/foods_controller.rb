class FoodsController < ApplicationController
  def index
    @searched = params[:q]
    @foods = FoodFacade.search_food(params[:q])
  end
end