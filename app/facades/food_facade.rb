class FoodFacade
  def initialize(query)
    @query = query
  end

  def service
    FoodDataService.new
  end

  def result_count
    json = service.get_foods_search(@query)

    json[:totalHits]
  end

  def result_foods
    json = service.get_foods_search(@query)

    json[:foods].map do |food_data|
      Food.new(food_data)
    end.first(10)
  end
end