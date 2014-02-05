#dish_ratings_spec.rb

require "spec_helper"

describe DishRating do
  let(:dishrating) {DishRating.create} 

  describe "#score" do
    it "should have a score" do 
      expect(dishrating.score(1)).to eq(1)
    end
  end

end