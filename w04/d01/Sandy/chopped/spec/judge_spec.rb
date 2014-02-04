require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.new }

  # it "is invalid without a name" do
  #   expect(judge).to_not be_valid

  #   judge.name = "Judge Reinhold"

  #   expect(judge).to be_valid
  # end

  it { should validate_presence_of(:name) }
  it { should have_many(:dish_ratings) }

end