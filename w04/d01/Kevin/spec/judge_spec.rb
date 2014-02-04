require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.new }

  it "is invalid without a name" do
    expect(judge).to_not be_valid
  end
end