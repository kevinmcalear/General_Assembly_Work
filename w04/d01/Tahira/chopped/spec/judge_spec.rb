require 'spec_helper'

describe Judge do
  let(:judge) {Judge.create(name: "Judge")}
  let(:dish) {Dish.new}

  it {should validate_presence_of(:name)}

  it {should have_many(:dish_ratings)}

  describe "#rate_dish" do
    it "rates a dish" do
      expect(judge.rate_dish(5)).to eq(5)
    end
  end
end