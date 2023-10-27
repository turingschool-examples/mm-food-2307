class FoodsFacade

  def food_search_results(query)
    json = FoodsService.new.search_foods(query)
    json[:foods].map do |food_data|
      Food.new(food_data)
    end.first(10)
  end

  def searched_food_count(query)
    json = FoodsService.new.search_foods(query)
    json[:totalHits]
  end
end