require "spec_helper"

describe ChoppingBlock do
  it {should belong_to(:chef) }
  it {should belong_to(:course)}
  it {should validate_presence_of(:chef_id)}
end