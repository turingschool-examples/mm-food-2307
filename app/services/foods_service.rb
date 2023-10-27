class FoodsService
  
  def food_search(query)
    get_url("foods/search?query=#{query}")
  end

  private

  def conn 
    Faraday.new "https://api.nal.usda.gov/fdc/v1/" do |f|
      f.params[:api_key] = Rails.application.credentials.food_db[:key]
      f.params[:pageSize] = 10
    end
  end

  def get_url(url)
    data = conn.get(url)
    JSON.parse(data.body, symbolize_names:true)
  end
end