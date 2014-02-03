require 'spec_helper'
require_relative '../lib/fortune'

describe FortuneCookie do
  let(:fortune) { FortuneCookie.new }

  describe "::new" do
    it "starts wrapped" do
      expect(fortune.wrapped?).to be_true
    end
  end

  describe "#unwrap!" do
    before { fortune.unwrap! }
    it "becomes unwrapped!" do
      expect( fortune.wrapped? ).to be_false
    end
  end

  describe "#crack!" do
    context "cookie is unwrapped" do
      before do
        fortune.unwrap!
        fortune.crack!
      end

      it "cracks" do
        expect( fortune.cracked? ).to be_true
      end
    end

    context "cookie is not unwrapped" do
      before { fortune.crack! }

      it "doesn't crack" do
        expect( fortune.cracked? ).to be_false
      end
    end
  end

  describe "#read" do
    context "still wrapped" do
      it "tells you to unwrap it!" do
        expect( fortune.read ).to match "unwrap"
      end
    end

    context "cookie is unwrapped" do
      before { fortune.unwrap! }
      
      it "tells you to crack it!" do
        expect( fortune.read ).to match "crack"
      end

      context "cookie is cracked" do
        before { fortune.crack! }

        it "reads you a fortune" do
          expect( fortune.read ).to eq("You will write lots of good tests.")
        end
      end
    end

  end

end