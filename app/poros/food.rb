class Food
  attr_reader :description, :gtin_upc, :brand_owner, :ingredients

  def initialize(attributes)
    @description = attributes[:description]
    @gtin_upc = attributes[:gtinUpc]
    @brand_owner = attributes[:brandOwner]
    @ingredients = ingredients_exist?(attributes[:ingredients])
  end

  def ingredients_exist?(ingredients)
    if ingredients.empty?
      'No ingredients listed'
    else
      ingredients
    end
  end
end