class Food 
  attr_reader :id, :description, :owner, :ingredients
  
  def initialize(data)
    @id = data[:gtinUpc]
    @description = data[:description]
    @owner = data[:brand_owner]
    @ingredients = data[:ingredients]
  end
end