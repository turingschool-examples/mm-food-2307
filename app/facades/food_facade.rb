class FoodFacade

  def self.search(query)
    service = FoodService.new
    response = service.search(query)

    response[:foods].map do |food|
      Food.new(food)
    end
  end

  def self.total_hits(query)
    service = FoodService.new
    service.total_hits(query)
  end
end