class Food
    attr_reader :description, :number, :brand_owner, :ingredients
  def initialize(food_data)
    @description = food_data[:description]
    @number = food_data[:gtinUpc]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end
end