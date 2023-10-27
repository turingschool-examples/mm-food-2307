class FoodFacade
  def food_search(keyword)
    data = FoodService.new.food_search(keyword)
    total_hits = data[:totalHits]
    data[:foods].map do |food_data|
      Food.new(food_data, total_hits)
    end
  end
