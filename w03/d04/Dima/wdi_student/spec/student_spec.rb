require_relative "../lib/student.rb"
require "spec_helper"

# describe Student do
#   subject(:student) {Student.new}
#     context "#name" do
#       it "has a name" do
#         expect(student.name).to eq("Dima")
#       end
#     end
#     context "#knowledge" do
#       it "starts with 0" do
#         expect(student.knowledge).to eq(0)
#       end
#     end

#     context "#energy" do
#       it "has a lot of energy" do
#       expect(student.energy).to eq("full")
#     end
#   end

#     describe "#to code" do
#       it "should get him tired" do
#         student.code
#         expect(student.energy).to eq("tired")
#       end

#       it "should get him smarter" do
#         student.code
#         expect(student.knowledge).to eq(5)
#       end
#     end
# end

describe Student do
  #subject(:steve) {Student.new}
  describe "::new" do
    it "has a name" do
      steve = Student.new("Flash Steve")
      expect(steve.name).to eq("Flash Steve")
    end
  end

  it "starts with energy" do
    steve = Student.new("Flash Steve")
    expect(steve.energy_level).to eq(100)
  end

  it "has no smarts" do
    steve = Student.new("Flash Steve")
    expect(steve.smarts).to eq(0)
  end

  describe "#break" do
    it "makes you not tired" do
      steve = Student.new("Flash Steve")
      steve.code
      steve.break
      expect(steve.energy_level).to eq(100)
    end
  end

  describe "#code" do
    #context "student has coded once" do
      #before do
        #steve.code
      #end
    #end

    it "reduces energy" do
      steve = Student.new("Flash Steve")
      steve.code
      expect(steve.code).to eq(1)
    end

    it "adds smarts" do 
      steve = Student.new("Flash Steve")
      steve.code
      expect(steve.smarts).to eq(1)
    end

    #context "steve has coded twice" do
      #before do
        #steve.code
        #steve.code
      #end
    #end
    it "should not add smarts when tired" do
      steve = Student.new("Flash Steve")
      steve.code
      steve.code
      expect(steve.smarts).to eq(1)
    end
  end
end