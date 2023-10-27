class FoodFacade
  attr_reader :foods, :total_hits

  def initialize(search_value)
    @foods = get_foods(search_value)
  end

  def get_foods(search_value)
    response = FoodsService.new.search_foods(search_value)
    @total_hits = response[:totalHits]

    response[:foods].map do |food|
      Food.new(food)
    end
  end
end