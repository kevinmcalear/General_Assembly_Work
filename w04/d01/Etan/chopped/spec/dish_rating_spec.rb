require 'spec_helper'

describe DishRating do

  it { should belong_to(:judge) }
  it { should belong_to(:dish) }
  let(:dish_rating) { DishRating.create (4)}

end