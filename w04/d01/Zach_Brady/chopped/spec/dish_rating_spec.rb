require 'spec_helper'

describe DishRating do
  it { should belong_to( :judge )}
  it { should belong_to( :dish )}
end