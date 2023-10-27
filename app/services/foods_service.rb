class FoodsService < ApplicationService
  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/') do |faraday|
      faraday.params['api_key'] = Rails.application.credentials.food_data[:key]
    end
  end

  def get_url(url)
    conn.get(url)
  end

  def search(query)
    json_parse(
      conn.get('/fdc/v1/foods/search') do |req|
        req.params['query'] = query
      end
    )
  end
end