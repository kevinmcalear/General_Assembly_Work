require 'spec_helper'
require_relative '../lib/calc'

describe Calculator do
  subject(:calc) { Calculator.new }


  describe "#add" do
    it "adds two positive numbers" do
      expect(calc.add(2, 2)).to eq(4)
    end

    it "adds a negative and positive number" do
      expect(calc.add(-1, 2)).to eq(1)
    end
  end


  describe "#subtract" do
    it "subtracts numbers" do
      expect(calc.subtract(11, 7)).to eq(4)
    end
  end


  describe "#power" do
    it "raises one number to the power of another number" do
      expect(calc.power(5,2)).to eq(25)
    end
  end


  describe "#sum" do
    it "computes the sum of an empty array" do
      expect(calc.sum([])).to eq(0)
    end

    it "computes the sum of an array of one number" do
      expect(calc.sum([5])).to eq(5)
    end

    it "computes the sum of an array of two numbers" do
      expect(calc.sum([3,7])).to eq(10)
    end

    it "computes the sum of an array of many numbers" do
      expect(calc.sum([4,8,2,0,5])).to eq(19)
    end
  end


  describe "#multiply" do
    it "multiplies two numbers" do
      expect(calc.multiply(3,5)).to eq(15)
    end

    it "multiplies several numbers" do
      expect(calc.multiply(1,5,3,6,3)).to eq(270)
    end
  end


  describe "#factorial" do
    it "computes the factorial of 0" do
      expect(calc.factorial(0)).to eq(1)
    end

    it "computes the factorial of 1" do
      expect(calc.factorial(1)).to eq(1)
    end

    it "computes the factorial of 2" do
      expect(calc.factorial(2)).to eq(2)
    end

    it "computes the factorial of 5" do
      expect(calc.factorial(5)).to eq(120)
    end

    it "computes the factorial of 10" do
      expect(calc.factorial(10)).to eq(3628800)
    end
  end

end