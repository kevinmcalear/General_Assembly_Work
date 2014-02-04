require 'spec_helper'

describe DishRating do
  subject(:dishrating) { DishRating.create }

  it {should belong_to(:judge)}
  it {should belong_to(:dish)}
  it {should validate_presence_of(:score)}

end
