require "spec_helper"

describe Course do
  it { should have_many(:dishes) }
  it { should have_many(:chopping_blocks)}
  it { should validate_presence_of(:round)}
  it { should validate_presence_of(:ingredient)}
end