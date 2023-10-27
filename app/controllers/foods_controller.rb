class FoodsController < ApplicationController
  def index
    if params[:q] == "" || params[:q] == nil
      flash[:alert] = "Nothing to search, please try again."
      redirect_to root_path
    else
      @searched = params[:q]
      @foods = FoodFacade.search_food(params[:q])
      @count = FoodFacade.total_hits(params[:q])
    end
  end
end