require 'rspec'
require 'pry'
require_relative '../lib/grammy.rb'

describe Grammy do 
  # before(:each) do
  # end
  let(:grammy) {Grammy.new(2014,"Record of the Year","Gotye")}

  it 'has a year' do 
    expect(grammy.year).to eq(2014)
  end 

  it 'has a category' do 
    expect(grammy.category).to eq("Record of the Year")
  end 

  it 'has a winner' do 
    expect(grammy.winner).to eq("Gotye")
  end 

end 

describe "::all" do 

  it 'displays all the Grammy award winners' do 
    Grammy.clear
    a1 = Grammy.new(2014,"Record of the Year","Gotye")
    a2 = Grammy.new(2013,"Record of the Year","Kings of Leon")
    expect(Grammy.all.count).to eq(2)
    expect(Grammy.all).to include(a1)
    expect(Grammy.all).to include(a2)
  end 
end   

describe "::clear" do 
  it 'removes all the Grammy award winners from memory' do 
    Grammy.clear
    expect(Grammy.all.count).to eq(0)
  end 
end 

describe "::save_all" do 
  it "saves the Grammy Array to a CSV File" do 
    Grammy.clear
    Grammy.new(2014,"Record of the Year","Gotye")
    Grammy.save_all("lib/grammy.csv")
    f = File.open("lib/grammy.csv","r")
    first_line = f.readline.chomp
    f.close

    expect(first_line).to eq("2014|Record of the Year|Gotye")
  end 
end 

describe "::read_all" do

  it "retrieves the values from the CSV file" do
  # clears @@grammys
  Grammy.clear
  # adds values into @@grammys
  Grammy.new(2014,"Record of the Year","Gotye")
  Grammy.new(2013,"Record of the Year","Kings of Leon")
  # saves values
  Grammy.save_all("lib/grammy.csv")
  # clear values
  Grammy.clear
  # retrieves the values
  Grammy.read_all("lib/grammy.csv")
  # value contains. 
  expect(Grammy.all.count).to eq(2)
  end 


end 
