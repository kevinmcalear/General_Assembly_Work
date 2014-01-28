require_relative "../lib/grammys"
require "spec_helper"

# Create an app that keeps track of the Grammy winners for various categories over the years.

describe Grammy do
# A grammy has:
let(:lorde) {Grammy.new(2014, "Song of the Year", "Lorde")}
# * A year
# * A category
# * A winner

# 1. `Add a Grammy`
it "should return the year of the new Grammy" do
  expect(lorde.year).to eq(2014)
end

it "should return the category of the Grammy" do
  expect(lorde.category).to eq("Song of the Year")
end

it "should return the winning artist" do
  expect(lorde.winner).to eq("Lorde")
end

describe "#to_s" do
    it "should return the string with the Grammy info" do 
      expect(lorde.to_s).to eq("Year:2014, Category:Song of the Year, Winner:Lorde.")
  end
end

# 2. `List all Grammys`
describe "::list" do
  it "returns the Grammy info stored in the array" do
    katy = Grammy.new(2014, "Best Album", "Katy Perry")
    pink = Grammy.new(2014, "Best Song", "Pink")

    full_list = Grammy.list
    expect(full_list).to include(katy)
  end
end

describe "#delete_gram" do
  it "should delete something from the grammy list" do

end


# 3. `Delete a Grammy` (This option will list all the Grammys with number indices, and you choose which one to delete by entering the index.)

# 4. `Quit

# ### Bonus

# Add these options to your program:

# 1. `List all Grammys from a given year`
# 2. `List all Grammys from a certain category`
end