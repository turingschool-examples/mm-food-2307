class FoodFacade

  def self.search_food(query)
    FoodService.new.search_food(query)[:foods].first(10).map do |food|
      Food.new(food)
    end
  end

  def self.total_hits(query)
    FoodService.new.search_food(query)[:totalHits]
  end
end