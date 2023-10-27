class FoodFacade
  def initialize(search_value)
    @items = get_foods(search_value)
  end

  def get_foods(search_value)
    response = FoodsService.new.search_foods(search_value)
    require 'pry';binding.pry
  end
end