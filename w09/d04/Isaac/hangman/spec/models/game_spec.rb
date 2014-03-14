require 'spec_helper'

describe Game do
  it { should validate_inclusion_of(:won).in_array([true, false])}
end
