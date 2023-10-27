require 'rails_helper'

RSpec.describe Food, test: :model do
  it 'exists' do
    attrs = {
              gtinUpc: 12345,
              description: 'Sweet Potato',
              brandName: 'A Store',
              ingredients: 'sweet potatoes'
            }

    food = Food.new(attrs)
    expect(food).to be_a Food
    expect(food.code).to eq(12345)
    expect(food.description).to eq('Sweet Potato')
    expect(food.brand).to eq('A Store')
    expect(food.ingredients).to eq('Sweet Potatoes')
  end
  
  it 'returns string is no brand information is available' do
    attrs = {
              gtinUpc: 12345,
              description: 'Sweet Potato',
              ingredients: 'sweet potatoes'
            }

    food = Food.new(attrs)
    expect(food).to be_a Food
    expect(food.code).to eq(12345)
    expect(food.description).to eq('Sweet Potato')
    expect(food.brand).to eq('Not A Branded Item')
    expect(food.ingredients).to eq('Sweet Potatoes')
  end


end