require "spec_helper"

describe Course do 
  let(:course) { Course.create }
  it { should have_many(:dishes) }

  it { should validate_presence_of(:round)}
  it { should validate_presence_of(:ingredient)}
end