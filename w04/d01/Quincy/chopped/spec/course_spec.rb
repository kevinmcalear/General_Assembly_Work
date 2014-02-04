require "spec_helper"

describe Course do 
  it { should have_many(:dishes) }
end