require "spec_helper"

describe Dish do
  it {should belong_to(:chef)}  

  it {should belong_to(:course)}
end