require "spec_helper"
require_relative "../lib/grammy"
require_relative "../lib/main"

describe Year do 
  let(:year) {Year.new}

  it "returns the year of the grammy awards" do 
    expect(year).to_not be_nil
  end
end



describe Category do
  let(:category) {Category.new("album", "song", "record")} 
  
  describe "an instance" do 
    it "has best album category" do 
      expect(category.best_album).to_not be_nil
    end

    it "has best song category" do 
      expect(category.best_song).to_not be_nil
    end

    it "has a best record category" do 
      expect(category.best_record).to_not be_nil
    end
  end
end



describe Winner do 
  let(:winner) {Winner.new("album_winner", "song_winner", "record_winner")}

  describe "an instance" do 
   it "has best album category winner" do 
      expect(winner.album_winner).to_not be_nil
    end

    it "has best song category winner" do 
      expect(winner.song_winner).to_not be_nil
    end

    it "has a best record category winner" do 
      expect(winner.record_winner).to_not be_nil
    end
  end
end