class FoodData
  attr_reader :code, :description, :brand_owner, :ingredients, :gtin

  def initialize(data)
    @code = data[:fdcId]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
    @gtin = data[:gtinUpc]
  end
end