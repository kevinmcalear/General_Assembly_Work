require "spec_helper"

describe Course do
  it { should have_many :dishes }
  it { should have_many :chopping_blocks }
  it { should have_many(:chefs).through(:dishes) }
end