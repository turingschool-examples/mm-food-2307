class FoodsFacade

  def search(query) 
    foods = FoodsService.new.food_search(query)
  end
end