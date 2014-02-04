#dish_spec.rb
require "spec_helper"

describe  Dish do
  let(:dish) {Dish.create}
  it {should belong_to(:chef)}
end