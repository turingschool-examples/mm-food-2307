class FoodsFacade
  attr_reader :search_query

  def initialize(food_info)
    @search_query = food_info[:q]
  end

  def food_search
    FoodDataService.new.food_search(@search_query)
  end
end