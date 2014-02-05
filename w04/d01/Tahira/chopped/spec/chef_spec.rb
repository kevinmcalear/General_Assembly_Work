require "spec_helper"

describe Chef do 

  let(:chef) { Chef.create(name: "Chef")}

  it {should validate_presence_of(:name)}

  describe "#make_dish" do
    let(:course) {Course.create}

    it "makes a dish for a particular course" do
      dish = chef.make_dish(course, "test dish")
      expect(dish).to be_kind_of Dish
      expect(course.dishes).to include(dish)
    end

  end
end 


