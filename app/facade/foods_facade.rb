class FoodsFacade
  attr_reader :query
  
  def initialize(query = nil)
    @query = query
  end

  def total_results
    FoodsService.new.search(@query)[:totalHits]
  end

  def first10
    data = FoodsService.new.search(@query)[:foods][0..9]
    data.map do |food|
      Food.new(food)
    end
  end
end