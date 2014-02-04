require "spec_helper"

describe DishRating do 
  it { should belong_to(:dish) }
  it { should belong_to(:judge)}

  it { should validate_presence_of(:score)}
end

