require 'spec_helper'

describe Chef do 
  let(:chef) {Chef.new}

  describe "#make_dish" do
    let(:course) {Course.create}

    before { chef.save }

    it " makse a dish for a particular course" do
      dish = chef.make_dish(course, "Micro-emulsion of octopus brain")
      expect(dish).to be_kind_of Dish
      expect(course.dishes).to include(dish)
    end
  end
end