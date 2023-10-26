class FoodsController < ApplicationController
  def index
    @facade = FoodsFacade.new(params)
  end

  def show

  end
end