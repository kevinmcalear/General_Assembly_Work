require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do
  subject(:gladiator){ Gladiator.new("Rory","Trident") }

  it "#name" do
      expect( gladiator.name ).to be_kind_of String
  end
  
  it "#weapon" do
    expect( gladiator.weapon).to eq("trident"||"spear"||"club")
  end  

end

describe Arena do
  subject(:arena){ Arena.new("Space") }

  it "#arena_name" do
    expect( arena.arena_name ).to be_kind_of String
  end

  it "arena capitalization" do
    expect( arena.arena_name ).to eq(arena.arena_name.capitalize)
  end

  it "#add_gladiator" do
    expect( arena.add_gladiator("Annie")).to eq(arena.gladiator_names.push("Annie"))
  end

  it "#remove_gladiator" do
    expect( arena.remove_gladiator("Bob")).to eq(arena.gladiator_names.delete("Bob"))
  end

  it "no more than 2 gladiators" do
    expect( arena.gladiator_names.count).to be <=2
  end



#expect size 2
#if 3 fails
end