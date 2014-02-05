require 'spec_helper'

describe Chopping_block do 
  let(:chopit) {Chopping_block.create(course_id: 1, chef_id: 1)}
  it { should validate_presence_of(:course_id)}
  it { should validate_presence_of(:chef_id)}
end