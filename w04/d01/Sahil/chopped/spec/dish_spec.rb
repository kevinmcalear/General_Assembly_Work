require "spec_helper"

describe Dish do
  it { should belong_to(:chef) }
end