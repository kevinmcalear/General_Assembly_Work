require 'spec_helper'

describe ChoppingBlock do
  let(:choppingblock) {ChoppingBlock.new}


 it {should belong_to(:course)}
 it {should belong_to(:chef)} 
end