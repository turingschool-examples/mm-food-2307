class FoodsService
  
  def conn
    Faraday.new(
      url: "https://api.nal.usda.gov/fdc/v1/"
    )
  end
  
  def get_url(link)
    temp_data = conn.get(link)
    JSON.parse(temp_data.body, symbolize_name: true)
  end

  def food_search(food)
    api_key = Rails.application.credentials.fdc[:key]
    get_url("foods/search?api_key=#{api_key}&query=#{food}")
  end
end