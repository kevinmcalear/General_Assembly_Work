require 'rspec'
require_relative "../lib/makechange"

describe "make_change" do 
  it "returns total number of quarters" do 
    expect(make_change(50)).to eq("2Q")
  end 
  it "returns total number of dimes" do 
    expect(make_change(20)).to eq("2D")
  end 
  it "returns total number of nickels" do 
    expect(make_change(5)).to eq("1N")
  end 
  it "returns total number of pennies" do 
    expect(make_change(4)).to eq("4P")
  end 
  it "returns total number of coins" do 
    expect(make_change(94)).to eq("3Q 1D 1N 4P")
  end 
end 

describe "make_cents" do 
  it "returns cents from coins" do
    expect(make_cents(2,1,3,1)).to eq(76) 
  end 
end 


