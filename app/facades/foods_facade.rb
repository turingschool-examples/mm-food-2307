class FoodsFacade
  attr_reader :search_query

  def initialize(food_info)
    @search_query = food_info[:q]
  end

  def food_search
    FoodDataService.new.food_search(@search_query)[:foods].first(10).map do |food|
      Food.new(food)
    end
  end
  
  def total_results_from_search
    FoodDataService.new.food_search(@search_query)[:totalHits]
  end
end