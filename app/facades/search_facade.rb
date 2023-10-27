class SearchFacade
  def find_ingredient(food)
    service = FoodsService.new
    return_data = service.food_search(food)

    return_data["foods"].map do |food|
      Food.new(food)
    end
  end
end