# app/facades/food_facade.rb
class FoodFacade
  def search_foods(food_name)
    api_key = Rails.application.credentials.dig(:food_data, :key) 

    connection = Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1') do |faraday|
      faraday.params['api_key'] = api_key
    end
    response = connection.get('foods/search', { query: food_name })
      json = JSON.parse(response.body, symbolize_names: true)
      json[:foods]
  end
end
