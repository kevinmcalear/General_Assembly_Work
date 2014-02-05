require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.create }


  it { should validate_presence_of(:name) }
  it { should have_many(:dishes).through(:dish_ratings) }


  it "should create dish score" do
    judge = Judge.create(name: "Judge Judy")
    expect(judge.dish_score(4)).to be_kind_of DishRating
  end

end