class WelcomeFacade
  def initialize(ingredient)
    @ingredient = ingredient
  end

  def ingredients
    conn = Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.headers["X-API-Key"] = Rails.application.credentials.usda[:key]
    end

    response = conn.get("fdc/v1/foods/search/#{ingredient}")

    json = JSON.parse(response.body, symbolize_names: true)
    @ingredients = json[:results].map do |ingredient_data|
      ingredient.new(ingredient_data)
    end
  end
end