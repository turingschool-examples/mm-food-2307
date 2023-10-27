class Food
  attr_reader :gtin_code,
              :description,
              :brand_owner,
              :ingredients
              
  def initialize(food_details)
    @gtin_code = food_details[:gtinUpc]
    @description = food_details[:description]
    @brand_owner = food_details[:brandOwner]
    @ingredients = food_details[:ingredients]
  end
end