require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.create(name: "Judge Joe Brown") }

  it {should have_many(:dishRatings)}
  it {should validate_presence_of(:name)}

  describe "#give score" do
    it "lets the judge give a score for a dish" do
      new_score = judge.give_score(5, 1)
      expect(new_score.score).to eq(5)
    end
  end

end