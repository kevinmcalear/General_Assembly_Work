require 'spec_helper'

describe Chef do
  subject(:chef) { Chef.create }

  describe "#make_dish" do
let(:course) { Course.create }

    it "makes a dish for a particular course" do
      dish = chef.make_dish(course, "Octopus brain")
      expect( dish ).to be_a Dish
      expect(course.dishes).to include(dish)
    end
  end



  # it { should validate_presence_of(:name) }

end