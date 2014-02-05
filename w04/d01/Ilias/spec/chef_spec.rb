require "spec_helper"

describe Chef do

  describe "#make_dish" do
    let(:chef) { Chef.create }
    let(:course) { Course.create }
    it "makes a dish for a particular course" do
      dish = chef.make_dish(course, "Micro-emulsion of octopus brain")
      expect(dish).to be_kind_of Dish
      expect(course.dishes).to include(dish)
    end
  end

  it { should have_many :chopping_blocks}
  it { should have_many(:courses).through(:dishes) }

end