require 'spec_helper'
require_relative '../lib/hex'

describe "#hex" do 
	it "will convert a decimal number to its base 16 hex equivalent" do
		expect(hex(12)).to eq("c")
	end

	it "will return 0 for 0" do 
		expect(hex(0)).to eq("0")
	end

	it "will return 64 for 100" do 
		expect(hex(100)).to eq("64")
	end

	it "will return -c for an input of -12" do
		expect(hex(-12)).to eq("-c")
	end

end

describe "#decimal" do 
	it "will convert a hex number to its base 10 decimal equivalent" do 
		expect(decimal("17")).to eq(23)
	end

	it "will return -31 for an input of -1f" do 
		expect(decimal("-1f")).to eq(-31)
	end

	it "will return 0 for 0" do 
		expect(decimal("0")).to eq(0)
	end
end