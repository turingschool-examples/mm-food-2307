require "faraday"
require "json"

class FoodDataService

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.food_data[:api_key]
    end
  end

  def search_ingredients(ingredients)
    response = conn.get("foods/search") do |req|
      req.params["query"] = ingredients
    end

    if response.success?
      parsed_response(response)
    else
      nil
    end
  end

  def total_hits(ingredients)
    response = search_ingredients(ingredients)
    response[:totalHits]
  end
  private

  def parsed_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end