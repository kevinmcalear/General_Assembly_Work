require 'spec_helper'

describe Judge do
  let(:judge) {Judge.create(name: "Judge")}
  let(:dish) {Dish.new}

  it {should validate_presence_of(:name)}
  it {should have_many(:dish_ratings)}
  describe "#rate_dish" do
    #before {judge.save}
    #expect(judge.rate_dish).to eq(0)
  end
end