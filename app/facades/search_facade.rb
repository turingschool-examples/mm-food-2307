class SearchFacade
  def find_ingredient(food)
    service = FoodsService.new
    return_data = service.food_search(food)

    require 'pry';binding.pry
    return_data
  end
end