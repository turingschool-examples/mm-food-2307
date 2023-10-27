class FoodDataService
  def get_foods_search(query)
    get_url("fdc/v1/foods/search?query=#{query}")
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.headers["X-Api-Key"] = Rails.application.credentials.food_data[:key]
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end