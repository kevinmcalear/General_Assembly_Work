require "spec_helper"

describe Course do
  subject(:course){Course.create(round: 2, ingredient: "Bean Sprouts")}
  it { should have_many(:dishes) }

  it { should validate_presence_of(:round) }

  it { should validate_presence_of(:ingredient)}
end