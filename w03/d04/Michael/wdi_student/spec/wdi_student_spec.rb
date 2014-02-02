require 'rspec'
require_relative "../lib/wdi_student.rb"

describe Student do 

  context "is first created" do
    before do
      @student = Student.new("Bob") 
    end  

    # A student starts with a name, 0 knowledge, and full of energy (not energy). 
    it "has a name" do 
      expect(@student.name).to eq("Bob")
    end 
    it "starts with 0 knowledge" do
      expect(@student.knowledge).to eq(0)
    end  
    it "starts with full energy" do 
      expect(@student.energy).to eq(2)
    end

    context "has energy but has not planned" do 
      before do 
        @student.code
      end 
      # A student can choose to code.  Coding increases your knowledge
      it "choses to code and gains knowledge"do 
        expect(@student.knowledge).to eq(1)
      end 

      # A student can choose to code.  Coding makes you lose energy. 
      it "choses to code and loses energy" do
        expect(@student.energy).to eq(0) 
      end 

    end

    context "has energy AND has planned" do 
      before do 
        @student.plan
      end 

      # If you plan right before you code, you can code twice in a row without getting energy.
      it "plans before code.  Can code twice in a row without losing energy" do 
        @student.code
        @student.code
        expect(@student.knowledge).to eq(2)
      end 

      # If you plan, you still get tired after two sessions. 
      it "plans but codes twice.  No longer has the 'Plan' bonus." do
        @student.code
        @student.code
        expect(@student.prep).to eq(false)
      end
    end 

    context "has no energy" do 
      before do 
        @student.energy= 0
      end 

      # Coding also does not increase your knowledge if you are energy to begin with. 
      it "choses to code when no energy.  Does not increase knowledge" do 
        @student.code
        expect(@student.knowledge).to eq(0)
      end 

      # If you take a break, you will have energy :)
      it "choses to take a break. Regains Full Energy"do 
        @student.break
        expect(@student.energy).to eq(2)
      end
    end 
  end 
end 