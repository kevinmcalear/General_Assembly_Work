require 'spec_helper'
require_relative '../lib/calc'

describe Calculator do
  subject(:calculator){Calculator.new}

  describe "#add" do
    it "adds two positive numbers" do
      expect(calculator.add(2, 2)).to eq(4)
    end

    it "adds a negative and positive number" do
      expect(calculator.add(-1, 2)).to eq(1)
    end
  end

  describe "#subtract" do
    it "subtracts numbers" do
      expect(calculator.subtract(11, 7)).to eq(4)
    end
  end

  describe "#power" do
    it "raises one number to the power of another number" do
      expect(calculator.power(9,2)).to eq(81)
    end
  end

  describe "#sum" do
    it "computes the sum of an empty array" do
      expect(calculator.sum([])).to eq (0)
    end
    it "computes the sum of an array of one number" do
      expect(calculator.sum([3])).to eq (3)
    end
    it "computes the sum of an array of two numbers"  do
      expect(calculator.sum([5,7])).to eq (12)
    end
    it "computes the sum of an array of many numbers"  do
      expect(calculator.sum([1,2,3,4,5])).to eq (15)
    end
  end

  describe "#multiply" do
    it "multiplies two numbers" do
      expect(calculator.multiply(6,6)).to eq (36)
    end
    it "multiplies several numbers" do
      expect(calculator.multiply(6,6,2)).to eq (72)
    end
  end

  describe "#factorial" do
    it "computes the factorial of 0" do
      expect(calculator.factorial(0)).to eq(1)
    end
    it "computes the factorial of 1" do
      expect(calculator.factorial(1)).to eq(1)
    end
    it "computes the factorial of 2" do
      expect(calculator.factorial(2)).to eq(2)
    end
    it "computes the factorial of 5" do
      expect(calculator.factorial(5)).to eq(120)
    end
    it "computes the factorial of 10" do
      expect(calculator.factorial(10)).to eq(3628800)
    end
  end

end