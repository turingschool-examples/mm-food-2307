class FoodService
  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |f|
      f.headers['X-Api-Key'] = Rails.application.credentials.food_data[:key]
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def search_food(query)
    get_url("foods/search?query=#{query}")
  end
end