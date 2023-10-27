class Food
  attr_reader :code,
              :description,
              :brand,
              :ingredients

  def initialize(info)
    @code = info[:gtinUpc]
    @description = info[:description].capitalize
    @brand = info[:brandName] || info[:brandOwner]
    @ingredients = info[:ingredients]
  end
end