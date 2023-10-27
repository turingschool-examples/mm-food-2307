class FoodService < ApplicationService

  def conn
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.FoodData[:key]
    end
  end

  def search(query)
    response = conn.get("/fdc/v1/foods/search") do |req|
      req.params["query"] = query
    end

    if response.success?
      json_parse(response)
    else
      nil
    end
  end

  def total_hits(query)
    response = search(query)
    response[:totalHits]
  end
  
end