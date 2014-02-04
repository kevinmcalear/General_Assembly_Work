require "spec_helper"

describe Dish do
  it { should validate_presence_of(:name) }
  it { should belong_to(:chef) }
  it { should belong_to(:course) }
  it { should have_many(:dish_ratings)}

end