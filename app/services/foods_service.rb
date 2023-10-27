class FoodsService
  
  @api_key = Rails.application.credentials.fdc[:key]

  def conn
    Fadaday.new(
      url: "https://api.nal.usda.gov/fdc/v1/"
    )
  end
  
  def get_url(link)
    temp_data = conn.get(link)
    JSON.parse(temp_data.body, symbolize_name: true)
  end

  def find_ingredient(food)
    get_url("foods/search?api_key=#{@api_key}&query=#{food}")
  end
end