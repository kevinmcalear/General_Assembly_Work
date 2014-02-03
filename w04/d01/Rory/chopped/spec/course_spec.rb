require "spec_helper"

describe Course do
  it { should have_many(:dishes) }
  #it { should belong_to(:chef) }
end