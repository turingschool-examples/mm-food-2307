class FoodsController < ApplicationController
  def index
    @foods = SearchFacade.new.find_ingredient(params[:q]).first(10)
  end
end