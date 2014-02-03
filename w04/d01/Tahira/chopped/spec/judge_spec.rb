require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.new }

  it {should validate_presence_of(:name)}
end