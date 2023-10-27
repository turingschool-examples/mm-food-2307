class FoodsService

   def search_foods(query)
    response = conn.get('/fdc/v1/foods/search') do |req|
      req.params['query'] = query
    end

    JSON.parse(response.body, symbolize_names: true)
   end
   
  def conn 
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = Rails.application.credentials.fdc[:key]
    end
  end
end