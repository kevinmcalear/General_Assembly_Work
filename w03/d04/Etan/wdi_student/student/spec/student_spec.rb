require_relative "../lib/student.rb"
require "spec_helper"


describe Student do 
  let (:new_student){ Student.new("JoBob") }
  describe "initial state for WDI student" do
    it "has a name" do
      expect(new_student.name).to eq("JoBob")
    end

    it "has 0 knowledge, 10 = full" do
      expect(new_student.knowledge).to eq(0)
    end

    it "has full energy, 10 = full" do
      expect(new_student.energy).to eq(10)
    end
  end

  describe "coding" do
    context "when not tired" do
      before do
        it "wants to code, -1 energy +1 knowledge" do

          expect(new_student.knowledge).to eq(1)
          expect(new_student.energy).to eq(9)
        end
      end
    end
    context "when tired" do
      before do
        new_student.learning
      end


    end
  end
end


# describe coding
# context when not tired, and wants to learn to code

# describe tired
#   context when too tired to code
