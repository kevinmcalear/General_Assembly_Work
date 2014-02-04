require "spec_helper"

describe ChoppingBlock do
  let (:chopping_block) { ChoppingBlock.create }
  it { should belong_to(:chef) }
  it { should belong_to(:course) }
  it { should validate_presence_of(:chef_id) }
  it { should validate_presence_of(:course_id) }
  
  describe "#add_to_cb" do
    it "adds a chef to the chopping block" do
      chopping_block.add_to_cb("Mary", 1)
      expect chopping_block.to include("Mary")
    end
  end


end