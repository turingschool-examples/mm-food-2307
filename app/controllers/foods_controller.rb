class FoodsController < ApplicationController
  def index
    conn = Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.headers["X-Api-Key"] = Rails.application.credentials.food_data[:key]
    end

    response = conn.get("fdc/v1/foods/search?query=#{params[:q]}")

    data = JSON.parse(response.body, symbolize_names: true)
    
    @result_count = data[:totalHits]
    @foods = data[:foods].first(10)
  end
end