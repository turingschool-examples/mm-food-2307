class FoodsService
  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/") do |f|
      f.headers["X-Api-Key"] = Rails.application.credentials.fdc[:key]
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def search_foods(search_value)
    get_url("v1/foods/search?query=#{search_value}")
  end
end