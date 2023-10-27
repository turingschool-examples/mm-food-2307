class Food
  attr_reader :fdc_id,
              :description,
              :gtin_upc,
              :brand_owner,
              :ingredients

  def initialize(data)
    @fdc_id = data[:fdcId]
    @description = data[:description]
    @gtin_upc = data[:gtinUpc]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end