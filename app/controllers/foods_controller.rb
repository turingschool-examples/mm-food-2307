class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.new
                       .food_search(params[:q])
  end
end