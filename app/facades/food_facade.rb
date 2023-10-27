class FoodFacade

  def self.search_food(query)
    FoodService.new.search_food(query)[:foods].limit(10).map do |food|
      Food.new(food)
    end
  end
end