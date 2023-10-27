class FoodService < ApplicationService

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1') do |faraday|
      faraday.params['api_key'] = Rails.application.credentials.FoodData[:key]
    end
  end

  def get_url(url)
    conn.get(url)
  end
end