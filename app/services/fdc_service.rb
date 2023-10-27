class FdcService

  def search(food)
    get_url("/foods/search?query=#{food}&pageSize=10")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |f|
      f.params['api_key'] = ''
    end
  end


end