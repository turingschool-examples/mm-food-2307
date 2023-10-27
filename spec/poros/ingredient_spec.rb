require "rails_helper"

RSpec.describe Ingredient do
  it "exists" do
    attrs = {
      name: "Cheddar Cheese",
    }

    ingredient = Ingredient.new(attrs)

    expect(ingredient).to be_a Ingredient
    expect(ingredient.name).to eq("Cheddar Cheese")
  end
end