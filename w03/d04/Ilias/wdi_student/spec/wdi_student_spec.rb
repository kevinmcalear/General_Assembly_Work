require "spec_helper"
require_relative "../lib/wdi_student"

describe Student do
  subject(:ilias){Student.new}

  describe "::new" do
    it "starts with no knowledge" do
      expect(ilias.knowledge_level).to eq(0)
    end
    it "starts with full energy" do
      expect(ilias.energy_level).to eq(100)
    end
  end

  describe "#code" do
    it "increases knowledge" do
      ilias.code
      expect(ilias.knowledge_level).to eq(100)
    end
    it "depletes energy" do
      ilias.code
      expect(ilias.energy_level).to eq(0)
    end
    it "won't let you code if energy is depleted" do
      ilias.code
      expect(ilias.code).to eq("...must...take...break....zzz")
    end
  end

  describe "#break" do
    it "increases energy" do
      ilias.code
      ilias.break
      expect(ilias.energy_level).to eq(100)
    end
  end

  describe "#plan" do
    it "allows you to code 2x longer before depleting energy" do
      ilias.plan
      ilias.code
      expect(ilias.energy_level).to eq(100)
    end
  end

end
