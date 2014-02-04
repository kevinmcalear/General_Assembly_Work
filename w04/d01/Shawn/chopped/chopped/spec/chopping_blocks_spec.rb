describe ChoppingBlock do 
  let(:chopping_block) { ChoppingBlock.new }

  it { should belong_to(:chef) }
  it {should belong_to(:course)}

  end

