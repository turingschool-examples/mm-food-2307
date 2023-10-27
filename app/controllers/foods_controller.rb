class FoodsController < ApplicationController
  def index
    params[:q]
    @foods = FoodFacade.search_food()
  end
end