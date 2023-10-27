class FoodsController < ApplicationController
  def index
    @food = SearchFacade.new.find_ingredient(params[:q])
  end
end