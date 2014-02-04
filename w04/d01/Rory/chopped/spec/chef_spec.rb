require "spec_helper"

describe Chef do
  let(:chef) { Chef.create }
  it { should have_many(:dishes) }
  it { should have_many(:chopping_blocks) }

  it { should validate_presence_of(:name) }


  describe "#make_dish" do
    let(:course) { Course.create }

    it "makes a dish for a particular course" do
      dish = chef.make_dish(course, "Micro-emulsion of octopus brain")
      expect(dish).to be_a Dish
      expect(course.dishes).to include(dish)
    end
  end

  #describe "#gets_put_on_cb" do
   #cb_chef = chef.gets_put_on_cb("Mary", 1)
   #expect(chopping_block.chefs).to include(#chef)
  #end
end