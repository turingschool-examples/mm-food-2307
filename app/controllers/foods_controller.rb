class FoodsController < ApplicationController
  def index
    @result_count = facade.result_count
    @foods = facade.result_foods
  end

  private

  def facade
    FoodFacade.new(params[:q])
  end
end