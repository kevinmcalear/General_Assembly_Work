require 'rspec'
require_relative '../lib/makechange.rb'

describe "#makechange" do 
  
  it "should return the number of quarters in $1" do
    expect(makechange(1.00)).to eq(4)
  end

  it "should return the number of dimes in $1.10" do 
    expect(makechange(1.10)).to eq(11)
  end

  it "should return the number of nickels in $0.65" do 
    expect(makechange(0.65)).to eq(13)
  end

end
