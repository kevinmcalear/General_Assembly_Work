require "spec_helper"

describe DishRating do
 let(:dishrating) {Dishrating.new}

 it {should belong_to(:judge)}
 it {should belong_to(:dish)}
end