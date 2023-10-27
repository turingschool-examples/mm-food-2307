class FoodService < ApplicationService

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = Rails.application.credentials.FoodData[:key]
    end
  end

  def get_url(url)
    conn.get(url)
  end

  def search_foods(query)
    get_url = '/fdc/v1/foods/search?query=Sweet%20Potatoes&pageSize=10'
  end

end