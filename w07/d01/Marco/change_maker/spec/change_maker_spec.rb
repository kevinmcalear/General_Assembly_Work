require 'spec_helper'
require_relative '../lib/change_maker'

describe "#makechange" do

  it "takes change and breaks it down into the fewest coins possible for change" do
    expect(makechange(25)).to eq("1 quarters, 0 dimes, 0 nickles, and 0 pennies.")
  end
end

# describe "#change_analyzer" do
#   it "analyzes a given amount of cents" do
#     expect(payment.change_analyzer(25)).to eq("1 quarter")
#   end
# end
