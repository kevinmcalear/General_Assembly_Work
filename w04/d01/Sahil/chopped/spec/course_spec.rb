require "spec_helper"

describe Course do
  it { should have_many(:dishes) }

  it { should validate_presence_of(:round) }
end