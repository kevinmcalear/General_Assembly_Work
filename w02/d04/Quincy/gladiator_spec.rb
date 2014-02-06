require 'spec_helper'
require_relative '../lib/gladiator'

describe Arena do

  describe "#gladiator_spec" do
    it "gives the gladiator a name" do
      expect(Arena.new.push("Quincy")).to eq(["Quincy"])
    end
    it "gives the gladiator a weapon" do
      expect(Arena.new.push("Excalibur")).to eq(["Excalibur"])
    end
  end

  describe "arena_spec" do
    it "gives the arena a name" do
      expect(Arena.new.push("Amphitheatre")).to eq(["Amphitheatre"])
    end
    it "capitalizes the arena's name" do
      expect(Arena.new.push("Amphitheatre")).to eq(["AMPHITHEATRE"])
    end
    it "adds gladiators" do
      expect(Arena.new.push("Kratos")).to eq(["Kratos"])
    end
    it "forces multiple gladiators to fight"
      expect(Arena.new.delete)
  end

end

