require "spec_helper"

describe Course do
  it {should have_many(:dishes)} 


  describe "#chop!" do
    it "removes the lowest rated dish/chef" do
      
      number_of_chefs = Chef.all.count
      round_one.chop!
      expect(Chef.all.count).to be (number_of_chefs - 1)
    end
  end 
end