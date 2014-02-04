require 'spec_helper'

describe ChoppingBlock do 
  subject(:chopping_block){ChoppingBlock.create}

  it {should validate_presence_of(:chef_id)}
  it {should validate_presence_of(:course_id)}
end