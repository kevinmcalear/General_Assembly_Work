require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.new }
  let(:dish) { Dish.new }

  # it "is invalid without a name" do
  #   expect(judge).to_not be_valid

  #   judge.name = "Judge Reinhold"

  #   expect(judge).to be_valid
  # end

  it { should validate_presence_of(:name) }

  describe "#rate_dish" do 
    it "returns a number between 1 and 5" do 
      expect( judge.rate_dish(dish) ).to be < 5
    end

  end

end