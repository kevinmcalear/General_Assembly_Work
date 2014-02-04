require 'spec_helper'

describe Chef do
  let(:chef) {Chef.create(name: "Joe")}

  it {should validate_presence_of(:name)}

  describe "#make_dish" do 
    let(:course) {Course.create(round: 2, ingredient: "Octopus")}

    it "makes a dish for a particular course" do
      dish = chef.make_dish(course, "Micro_emulsion of octopus brain")
      expect(dish).to be_a Dish
      expect(course.dishes).to include(dish)
    end
  end

  describe "#is_chopped?" do
    it "should show that the chef has not been chopped" do
      expect( chef.is_chopped? ).to eq(false)
    end
  end
end