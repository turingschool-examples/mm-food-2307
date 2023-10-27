class FoodService < ApplicationService
  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/') do |faraday|
      faraday.headers['X-Api-Key'] = Rails.application.credentials.fdc[:key]
    end
  end

  def food_search(keyword)
    json_parse(get_url('fdc/v1/foods/search')) do |req|
      req.params['query'] = keyword
      req.params['pageSize'] = 10
    end
  end
end
