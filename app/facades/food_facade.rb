class FoodFacade
  def self.search_ingredients(ingredients)
    service = FoodDataService.new
    response = service.search_ingredients(ingredients)

    response[:foods].map do |food_data|
      FoodData.new(food_data)
    end
  end
end