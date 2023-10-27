require 'rails_helper'

describe "tesT" do
  it "do" do
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |f| 
      f.headers['X-Api-Key'] = Rails.application.credentials.fdc[:key]
    end
    require 'pry';binding.pry
  end
end