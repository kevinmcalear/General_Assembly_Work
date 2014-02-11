require "spec_helper"
require_relative "../lib/fortune"

#when describing classes, put the class constant right in there
describe FortuneCookie do 
  let(:fortune){FortuneCookie.new}

  #what's the difference between the :: and the #
  #:: denotes a class method and # denotes an instance method
  describe "::new" do
    it "starts wrapped" do
      expect(fortune.wrapped?).to be_true
  end

  describe "#unwrap!" do
    before {fortune.unwrap!}
    it "becomes unwrapped" do
      expect(fortune.wrapped?).to be_false
  end
end

  describe "#crack!" do
    context "cookie is unwrapped" do
      before do 
        forturne.unwrap!
        fortune.crack!
      end

      it "cracks" do
        expect(fortune.cracked?).to be_true
      end
    end

    #here you're trying to crack the cookie before it's
    #unwrapped, which should be false
    context "cookie is not unwrapped" do
      before {fortune.crack!}
      it "doesn't crack" do
        expect(fortune.cracked?).to be_false
      end
    end
  end
#this is where we started – we started where we cared most
#which was reading the fortune & then we asked ourselves
#first of all, it's still wrapped – how is it still wrapped?
#we need to set that up. Let's say it starts wrapped – 
#we were able to pass that test by returning a hard-coded value
#that's why we needed to run the opposite – the unwrap method
#the interesting thing about this is, the unwrap cookie is
#going to be useful to us – becuase we want to get to the cookie
  describe "#read" do
    context "still wrapped" do
      it "tells you to unwrap it!" do
        #expecting when you call this method and the 
        #cookie is still unwrapped, a string will be returned
        #and within that string will be the word "unwrap"
        fortune = FortuneCookie.new
        expect(fortune.read).to match "unwrap"
      end
    end
    context "cookie is unwrapped" do
      #call the method to unwrap the cookie
      before {fortune.unwrap!}

      it "tells you to crack it!" do
        #means the return will include the word crack
        expect(fortune.read).to match "crack"
      end
      context "cookie is cracked" do
        before {fortune.crack!}
        it "it reads you a fortune" do
          expect(fortune.read).to eq("You will write lots of good tests.")
      end
    end
   end
  end
end
