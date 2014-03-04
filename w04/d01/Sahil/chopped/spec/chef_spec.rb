require "spec_helper"

describe Chef do
  let(:chef) { Chef.create }

  describe "#make_dish" do
    let(:course) { Course.create(round: 1) }

    it "makes a dish for a particular course" do
      dish = chef.make_dish(course, "Micro-emulsion of octopus brain")
      expect(dish).to be_a Dish
      expect(course.dishes).to include(dish)
    end
  end
end