require "spec_helper"

describe Chef do 
    let(:chef) { Chef.create }
    let(:course) { Course.create }
  
  describe "#make_dish" do 
      it "makes a dish for a particular course" do 
        dish = chef.make_dish(course, "Microemulsion of Octopus Brain")
        expect(dish).to be_a Dish
        expect(chef.dishes).to include(dish)
      end
    end

  end


 