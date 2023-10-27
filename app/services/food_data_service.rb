class FoodDataService

  def get_url(url)
    response = connection.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  def food_search(search_query)
    get_url("/fdc/v1/foods/search?api_key=#{Rails.application.credentials.food_data_central[:key]}&query=#{search_query}&dataType=Branded")

  end

  def connection
    Faraday.new(url: 'https://api.nal.usda.gov')
  end
end

# https://api.nal.usda.gov/fdc/v1/foods/search?api_key=DEMO_KEY&query=Cheddar%20Cheese