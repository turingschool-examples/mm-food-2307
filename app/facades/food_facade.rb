class FoodFacade
  attr_reader :query, :service

  def initialize(query)
    @query = query
    @service = FoodsService.new
  end

  def search_foods
    json = @service.food_search(@query)
    @foods = json[:results].map do |food_data|
      Food.new(food_data)
    end
  end
end