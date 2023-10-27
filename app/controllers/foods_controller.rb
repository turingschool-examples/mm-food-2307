class FoodsController < ApplicationController
  
  def index
    results = FoodsFacade.new.search(params[:q])
    @count = results[:totalHits]
    @foods = results[:foods].map do |food|
      Food.new(food)
    end

  end
end