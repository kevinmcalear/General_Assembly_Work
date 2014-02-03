require 'spec_helper'
require_relative '../lib/wdi_student.rb'

describe WDI_Student do
  describe "::new" do
    before do
      @wdi = WDI_Student.new("Tony")
    end
    it "should have a nickname" do
      expect(@wdi.nickname).to eq("Tony")
    end

    it "should have full energy" do
      expect(@wdi.energy).to eq("full")
    end

    it "should have 0 knowledge" do 
      expect(@wdi.knowledge).to eq(0)
    end
  end

  describe "#code" do
    before do
      @wdi = WDI_Student.new("Tony")
      @wdi.code
    end

    it "should make you tired" do
      expect(@wdi.energy).to eq("tired")
    end

    it "increases your knowledge" do
      expect(@wdi.knowledge).to eq(1)
    end

    it "does not increase knowledge if tired" do
      @wdi.code
      expect(@wdi.knowledge).to eq(1)
    end

  end

  describe "#break" do
    it "should make you not tired" do
      @wdi = WDI_Student.new("Tony")
      @wdi.code
      @wdi.break
      expect(@wdi.energy).to eq("full")
    end
  end

  describe "#plan" do
    it "should allow you to code withou being tired for one turn" do
      @wdi = WDI_Student.new("Tony")
      @wdi.plan
      @wdi.code
      expect(@wdi.energy).to eq("full")
    end

    it "should not let you stay full of energy for your next code" do
      @wdi = WDI_Student.new("Tony")
      @wdi.plan
      @wdi.code
      @wdi.code
      expect(@wdi.energy).to eq("tired")
    end
  end
  
end