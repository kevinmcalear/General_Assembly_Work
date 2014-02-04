require "spec_helper"

describe Chef do
  let(:chef){Chef.create(name: "Mike")}

  it {should validate_presence_of(:name)}
  it {should have_many (:dishes)}
  it {should have_many (:chopping_blocks)}
  it {should have_many (:courses)}

  describe "#make_dish" do
    let(:course){Course.create(round: 1, ingredient: "Octopus brainz")}

    it "makes a dish for a particular course" do
      dish = chef.make_dish(course, "Micro-emulsion of octopus brain")
      expect(dish).to be_a Dish
      expect(course.dishes).to include(dish)
    end
  end

end
