require 'spec_helper'

describe Dish do
  it { should belong_to(:chef) }
  it { should belong_to(:course) }
  it { should have_many(:dish_ratings) }
  it { should validate_presence_of(:name) }
  it { should have_many(:judges).through(:dish_ratings)}

end