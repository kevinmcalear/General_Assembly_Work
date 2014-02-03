require "spec_helper"

describe DishRating do
  it { should belong_to(:dish) }
  it { should belong_to(:judge) }
end