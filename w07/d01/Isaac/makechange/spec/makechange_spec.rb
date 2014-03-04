require 'spec_helper'
require_relative '../lib/makechange'

describe "make_change" do 
  it "gets quarters" do 
    make_change(50).should include( :quarters => 2 )
  end
  it "gets dimes" do 
    make_change(10).should include( :dimes => 1 )
  end
  it "gets nickels" do
    make_change(15).should include( :nickels => 1 )
  end
  it "gets pennies" do
    make_change(4).should include( :pennies => 4 )
  end
  it "gets a combination of everything" do 
    make_change(92).should include( :pennies => 2, :dimes => 1, :quarters => 3, :nickels => 1 )
  end
end