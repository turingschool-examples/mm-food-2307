class Food
  attr_reader :total_hits,
              :gtin_upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(data, total_hits)
    @total_hits = total_hits
    @gtin_upc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end