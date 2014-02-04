require "spec_helper"

describe Dish do
  subject(:dish){ Dish.new }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:course_id) }
  it { should validate_presence_of(:chef_id) }
  it { should belong_to(:chef) }
  it { should belong_to(:course) }

end