# TEST DRIVEN DEVELOPMENT

# 1. tests (fail), automated
# 2. code until tests pass
# 3. refactor

# Advantages of test driven DEVELOPMENT
# -feedback loop
# -verify
# -regression error: functionality which once worked and now is broken
# -focuses your thinking
# -improve design

# AGILE - set of tools and methodologies
# Agile vs. Waterfall
# We are going to embrace Agile 
# emergent design
# Library - someone else's code that's been design so you can use it easily. rspec is the library we use for TDD

# make directories lib and spec
# lib is where our code goes. spec is where our tests/examples go

# rspec init
# this creates helper and config files
# convention in rspec is to suffix all spec files with _spec, example play_spec.rb

# don't write the code first. write the test first.
# rspec has a particular API - application programming interface

# require "spec_helper"
# require_relative "../lib/play"

# describe "#add" do 
#   it "adds two numbers together" do 
#     expect(add(2,3)).to eq(5)
#   end
# end

# library is the whole structure, api is the interface to the structure.
# rspec. we describe a method / object and provide examples
# lets that you set up will cascade to scopes below 

# the # sign means instance method, the :: means class method














