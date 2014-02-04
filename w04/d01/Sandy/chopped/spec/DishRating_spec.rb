require "spec_helper"

describe DishRating do
  subject(:dish_rating) { DishRating.new }

  it { should belong_to(:dish) }
  it {should belong_to(:judge) }
  
end


 