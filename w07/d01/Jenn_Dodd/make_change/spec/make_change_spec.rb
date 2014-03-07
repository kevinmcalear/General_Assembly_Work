require "rspec"
require_relative "../lib/make_change"


describe Changer do
  let(:seventysix) {Changer.new(76)} 
  let(:sixtyseven) {Changer.new(67)}
  let(:thirtyfive) {Changer.new(35)}
  let(:eighteen) {Changer.new(18)}

  it "tells you how many quarters" do
    expect(seventysix.quarters).to eq(3)
    expect(sixtyseven.quarters).to eq(2)
    expect(thirtyfive.quarters).to eq(1)
    expect(eighteen.quarters).to eq(0)
  end

  it "gives you the remainder from quarters" do
    expect(seventysix.quarter_remains).to eq(1)
    expect(sixtyseven.quarter_remains).to eq(17)
    expect(thirtyfive.quarter_remains).to eq(10)
    expect(eighteen.quarter_remains).to eq(18)
  end

  it "tells you how many dimes after quarters" do
    expect(seventysix.dimes).to eq(0)
    expect(sixtyseven.dimes).to eq(1)
    expect(thirtyfive.dimes).to eq(1)
    expect(eighteen.dimes).to eq(1)
  end

  it "gives you the remainder from dimes" do
    expect(seventysix.dime_remains).to eq(1)
    expect(sixtyseven.dime_remains).to eq(7)
    expect(thirtyfive.dime_remains).to eq(0)
    expect(eighteen.dime_remains).to eq(8)
  end

  it "tells you how many nickels after dimes" do
    expect(seventysix.nickels).to eq(0)
    expect(sixtyseven.nickels).to eq(1)
    expect(thirtyfive.nickels).to eq(0)
    expect(eighteen.nickels).to eq(1)
  end

  it "tells you how many pennies after nickels" do
    expect(seventysix.pennies).to eq(1)
    expect(sixtyseven.pennies).to eq(2)
    expect(thirtyfive.pennies).to eq(0)
    expect(eighteen.pennies).to eq(3)
  end

  it "tells you how many of all" do
    expect(seventysix.change).to eq("Quarters: 3, Dimes: 0, Nickels: 0, Pennies: 1")
    expect(sixtyseven.change).to eq("Quarters: 2, Dimes: 1, Nickels: 1, Pennies: 2")
    expect(thirtyfive.change).to eq("Quarters: 1, Dimes: 1, Nickels: 0, Pennies: 0")
    expect(eighteen.change).to eq("Quarters: 0, Dimes: 1, Nickels: 1, Pennies: 3")
  end


end