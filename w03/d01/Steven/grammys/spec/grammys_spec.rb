require_relative "../lib/grammys.rb"
require "spec_helper"

describe Grammy do 
  let(:grammy_1){Grammy.new("Best New Artist", 1982, "John Denver")}
  let(:grammy_2){Grammy.new("Best Rap Album", 1996, "Al Gore")}
  
  it "has a category" do
    expect(grammy_1.category).to eq("Best New Artist")
  end

  it "has a year" do
    expect(grammy_1.year).to eq(1982)
  end

  it "has a winner" do
    expect(grammy_1.winner).to eq ("John Denver")
  end
#end

describe "#to_s" do

  it "can return a string with a the grammy's data" do
    expect(grammy_1.to_s).to eq("Best New Artist, 1982, John Denver")
  end
end

describe "::all" do

  it "can list all the grammys" do

    Grammy.clear 
    grammys = Grammy.all

    expect(grammys).to include(grammy_1)
    expect(grammys).to include(grammy_2)
    expect(grammys.count).to eq(2)
  end

end

describe "::delete_grammy" do
  before do
    Grammy.clear

  grammy_1 = Grammy.new("Best New Artist", 1982, "John Denver")
  grammy_2 = Grammy.new("Best Rap Album", 1996, "Al Gore")
  Grammy.delete_at(0)
  end
  grammys = Grammy.all

  it "deletes a grammy from the array" do
    #expect(grammys.delete_grammy[0]).not_to include(grammy_1)
    expect(grammys).not_to include(grammy_1)
  end
end

describe "::save_all" do
  before do
    Grammy.clear
    grammy_1 = Grammy.new("Best New Artist", 1982, "John Denver")
  grammy_2 = Grammy.new("Best Rap Album", 1996, "Al Gore")
  end
  end

  it "creates a csv file with all grammy winners" do
  if File.exists? "grammys_test.csv"
    File.delete("grammys_test.csv")
  end
  Grammy.save_all("grammys_test.csv")
  end

  it "saves everything to a csv file" do
    Grammy.save_all("grammys_test.csv")
    f = File.open("grammys_test.csv","r")
      contents = f.read
      f.close
      contents_array = contents.split("\n")
      first_line = contents_array[0]
    end


#end


end