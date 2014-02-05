require 'spec_helper'

describe Dish_rating do
  let(:chef) {Chef.create(name: "Joe")}
  let(:judge) {Judge.create(name: "Alfred")}
  let(:octo) {Dish.create(name: "octo", course_id: 1, chef_id: 1)}
  let(:rating_one) {Dish_rating.create(score: 3, dish_id: 1, judge_id: 1)}


  describe "#give_score" do
    it "should return a score for a dish" do 
      expect( judge.give_score(3)).to eq(3)
    end
  end
end