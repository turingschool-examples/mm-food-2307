class FoodFacade
  def initialize(query)
    @query = query
  end

  def all_foods

    data = FoodService.new.foods_with_query(query)

    foods = data[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end