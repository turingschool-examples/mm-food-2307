class Food
  attr_reader :total_hits,
              :gtin_upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(data, total_hits)
    # binding.pry
    @total_hits = total_hits
    @gtin_upc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end

# https://api.nal.usda.gov/fdc/v1/foods/search?
# query=sweet%20potato
# &dataType=
# &pageSize=10
# &pageNumber=1
# &sortBy=dataType.keyword
# &sortOrder=asc
# &api_key=ckhel82f5l3NcEWta8rO1fPNMhfreMJ9zq9GshzW