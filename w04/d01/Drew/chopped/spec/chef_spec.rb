require 'spec_helper'

describe Chef do 
  let (:chef) {Chef.new}

  describe "#make_dish" do
    let(:course) {Course.create}

    before {chef.save}

    it "makes a dish for a particular course" do
      dish = chef.make_dish(course, "Micro-emulsion of octopus brain") 
      expect(dish).to be_a Dish
      expect(course.dishes).to include(dish)
    end
  end

  describe "#send_to_chopping" do
    let (:best_chef) {Chef.create}
    let(:worst_chef) {Chef.create}
    it "if a chef has the lowest rating, he is sent to the chopping block" do 
      course = Course.create
      best_dish = best_chef.make_dish(course, dish_name)
      worst_dish = worst_chef.make_dish(course, dish_name)
      judge_one = Judge.create
      judge_one.judge_a_dish(1, worst_dish)
      judge_one.judge_a_dish(10, best_dish)
    expect(ChoppingBlock.find_by_course_id(course.id).chef_id).to eq(worst_chef.id)
    end
  end


end