require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.create(name: "Alfred", number: 3) }

  describe "#give_score" do

    it "should return a score for a dish" do
      expect( judge.give_score("Alfred", 3)).to eq("Alfred", 3)
    end
  end
  it { should validate_presence_of(:name, :number) }
end