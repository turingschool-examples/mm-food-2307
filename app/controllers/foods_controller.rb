class FoodsController < ApplicationController
  def index
    @total_results = facade.searched_food_count(params[:q])
    @foods = facade.food_search_results(params[:q])
  end

  private

  def facade
    FoodsFacade.new
  end
end