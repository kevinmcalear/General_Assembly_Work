require "spec_helper"

describe ChoppingBlock do
  it { should belong_to(:chef) }
  it { should belong_to(:course) }
end