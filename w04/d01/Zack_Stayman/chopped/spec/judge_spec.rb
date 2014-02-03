require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.new }

  it "is invalid without a name" do
    should validate_presence_of(:name)
  end


end