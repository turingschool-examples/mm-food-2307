class WelcomeController < ApplicationController
  def index

    food_name = params[:food_name]

    conn = Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |faraday|
      faraday.headers["api_key"] = Rails.application.credentials.fooddata[:key]
    end
    response = conn.get('foods/search', { query: food_name })

    data = JSON.parse(response.body, symbolize_names: true)

    
    render "welcome/index"
  end
end
