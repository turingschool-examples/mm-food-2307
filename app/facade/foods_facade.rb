class FoodsFacade
  def initialize(query = nil)
    @query = query
  end

  def total_results
    FoodsService.new.search(@query)[:totalHits]
  end

  def search
    data = FoodsService.new.search(@query)
    data.map do |food|
      Food.new(food)
    end
  end
end