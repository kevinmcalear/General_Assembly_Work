require 'spec_helper'

describe Chef do
  subject(:chef) { Chef.create(:name => "Gordon") }

  it { should have_many(:dishes) }
  it { should validate_presence_of(:name) }
  it { should have_many(:chopping_blocks) }
  it { should have_many(:courses).through(:chopping_blocks) }

  describe "#make_dish" do
    let(:course) { Course.create(:round => 1, :ingredient => "octopus") }

    it "makes a dish for a particular course" do
      dish = chef.make_dish(course, "Octopus brain")
      expect( dish ).to be_a Dish
      expect(course.dishes).to include(dish)
    end
  end



  

end