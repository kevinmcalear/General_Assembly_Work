require "spec_helper"
require_relative "../lib/fortune"

describe FortuneCookie do 
  let(:fortune) { FortuneCookie.new }
  describe "#read" do 
    context "still wrapped" do 
      it "tells you to unwrap it!" do
        expect( fortune.read ).to match "unwrap"
      end
    end
  end
end