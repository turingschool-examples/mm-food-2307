class Food
  attr_reader :code,
              :description,
              :brand,
              :ingredients

  def initialize(info)
    @code = info[:gtinUpc]
    @description = info[:description].titleize
    @brand = brand_select(info[:brandName], info[:brandOwner])
    @ingredients = ingredient_finder(info[:ingredients])
  end

  private
  def brand_select(name, owner)
    if name
      name.titleize
    elsif owner
      owner.titleize
    else
      "Not A Branded Item"
    end
  end

  def ingredient_finder(ingredients)
    if ingredients == "" || ingredients == nil
      "No Ingredients Listed"
    else
    ingredients.titleize
    end
  end
end