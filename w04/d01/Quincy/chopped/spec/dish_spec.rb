require "spec_helper"

describe Dish do
  it { should belong_to(:chef) }
  subject(:dish) { Judge.create(name: "Bobby")}

  describe '#dish_name' do
    it "should give out the chef's name" do
      expect(Judge.("Bobby")).to eq("Bobby")
      end
    end
   self.validates(:name { presence: true})
end