require 'spec_helper'
require_relative '../lib/anagram'
require "pry"

class Anagram
  def initialize(word, possibilities)
    @word = word
    @possibilities = possibilities
    @word_array = String.new
    @possibilities_letters = Array.new
  end

  def word
    return @word
  end

  def possibilities
    return @possibilities
  end

  def find_letters
    @word_array = self.word.split("")
    @word_array.sort!
    return @word_array
  end

  def possibilities_letters
    @possibilities_letters = self.possibilities.map do |possibility|
      possibility.split("").sort
    end
    return @possibilities_letters
  end

  def find_anagrams
    binding.pry
    @results = Array.new
    @possibilities_letters.each do |array|
      if @word_array == array
        @results << self.possibilities[@possibilities_letters.find_index(array)]
      end
    end
    return @results
  end
end