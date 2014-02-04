require "spec_helper"

describe Chef do
  subject(:chef) { Chef.create!(name: "John") }

  describe "::new" do
    # before { chef.save}

    it { should validate_presence_of(:name) }

  end

  describe "#cook" do
    let(:course) { Course.create(round: 2, ingredient: "Bean Sprouts")}

    it "makes a dish for a particular course" do
      dish = chef.cook(course, "Micro-emulsion of octopus brain")
      expect(dish).to be_a Dish
      expect(course.dishes).to include(dish)
    end
  end

end