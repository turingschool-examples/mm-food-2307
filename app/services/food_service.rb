class FoodService < ApplicationService
  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/') do |faraday|
      faraday.headers['X-Api-Key'] = Rails.application.credentials.fdc[:key]
      # faraday.params['api_key'] = Rails.application.credentials.fdc[:key]
    end
  end
  
  def food_search(keyword)
    json_parse(conn.get('fdc/v1/foods/search') do |req|
        req.params['pageSize'] = "10"
        req.params['query'] = keyword
        req.params['dataType'] = 'Branded'
      end
    )
  end
end