class FoodsController < ApplicationController 
  def index 
    @query = params[:search]
    @foods = FoodFacade.new(@query)
  end
end