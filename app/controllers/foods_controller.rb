class FoodsController < ApplicationController
  def search
    @facade = FoodsFacade.new(params[:q])
  end
end