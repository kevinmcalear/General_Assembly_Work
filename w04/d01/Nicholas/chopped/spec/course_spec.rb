require 'spec_helper'

describe Course do
  let(:course_one) {Course.create(round: 1, ingredient: "leeks")}

  it {should have_many(:dishes)}  
  it {should validate_presence_of(:round)}
  it {should validate_presence_of(:ingredient)}
end
