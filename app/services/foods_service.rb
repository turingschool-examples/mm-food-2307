class FoodsService
  def conn 
    Faraday.new(url: "https://api.nal.usda.gov")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def food_search(query)
    get_url("/fdc/v1/foods/search?api_key=#{Rails.application.credentials.food[:key]}&query=#{query}")
  end
end