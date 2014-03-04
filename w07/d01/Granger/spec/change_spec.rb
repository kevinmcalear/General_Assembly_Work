require 'spec_helper'
require_relative '../lib/change.rb'


describe '#make_change' do 
  it "should make return a change for cents" do
    expect(make_change(3)).to eq({p: 3, n: 0, d: 0, q: 0})
  end

  it "should make return a change for above 5 cents" do
    expect(make_change(8)).to eq({p: 3, n:1, d: 0, q: 0})
  end  

  it "should handle dimes and quarters" do
    expect(make_change(43)).to eq({q: 1, d: 1, n:1, p: 3})
  end
end

describe '#add_change' do

  it "should add up change" do
    expect(add_change(1,1,1,3)).to eq(43)
  end

end

describe '#make_change2' do 
  it "should make return a change for cents" do
    expect(make_change2(3)).to eq({p: 3, n: 0, d: 0, q: 0})
  end

  it "should make return a change for above 5 cents" do
    expect(make_change2(8)).to eq({p: 3, n:1, d: 0, q: 0})
  end  

  it "should handle dimes and quarters" do
    expect(make_change2(43)).to eq({q: 1, d: 1, n:1, p: 3})
  end
end


describe '#make_change3' do 
  it "should make return a change for cents" do
    expect(make_change3(3)).to eq({1 => 3, 5 => 0, 10 => 0, 25 => 0})
  end

  it "should make return a change for above 5 cents" do
    expect(make_change3(8)).to eq({1 => 3, 5 =>1, 10 => 0, 25=> 0})
  end  

  it "should handle dimes and quarters" do
    expect(make_change3(43)).to eq({25=> 1, 10=> 1, 5=>1, 1=> 3})
  end
end