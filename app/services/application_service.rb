class ApplicationService
  def get_url(url)
    conn.get(url)
  end

  def json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end