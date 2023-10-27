class FoodsController < ApplicationController
  def index
    @facade = FoodsFacade.new(params)
  end
end