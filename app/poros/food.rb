class Food

  attr_reader :upc,
              :description,
              :brand,
              :ingredients,
              :fdc,
              :total_hits

  def initialize(data)
    @upc = data[:gtinUpc]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
    @fdc = data[:fdcId]
    @total_hits = data[:totalHits]
  end
end