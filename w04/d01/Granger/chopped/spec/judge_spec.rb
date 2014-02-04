require 'spec_helper'

describe Judge do

  it {should validate_presence_of( :name)}

  describe "#judge_a_dish" do
    judge = Judge.create
    course = Course.create
    dish = course.dishes.create
    judge.judge_a_dish(3, dish)
    
      it "judge should rate a dish 1 through 5" do
        expect(dish.score).to be >= (3)
      end

      it "should add the scores together" do
        russian_judge = Judge.create
        russian_judge.judge_a_dish(2, dish)
        expect(dish.score).to eq(5) 
      end
  end

end