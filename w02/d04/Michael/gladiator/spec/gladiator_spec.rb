require 'rspec'
require_relative '../lib/gladiator'
#Rspec Gladiator Arena

#Gladiator Spec
describe "Gladiator" do 
  let (:gladiator){ Gladiator.new("Trident") }
#A gladiator has a name
  it "A Gladiator should have a first and last name" do
    expect( gladiator.first_name ).not_to be_empty
    expect( gladiator.last_name ).not_to be_empty
    expect( gladiator.first_name ).to be_kind_of(String)
    expect( gladiator.last_name ).to be_kind_of(String)
    # expect( gladiator.first_name ).to match("Maximilliam"||"Crixus"||"Flamma"||"Commodus"||"Spartacus")
    # expect( gladiator.last_name ).to match("Smith"||"Jones"||"Brown"||"Washington"||"Williams")
  end
#A gladiator has a weapon
  it "A Gladiator should have a weapon" do
    expect( gladiator.weapon ).to be_kind_of(String)
    # expect( gladiator.weapon ).to match("Trident"||"Spear"||"Club")
  end 
end 

#Arena Spec
describe "Arena" do
  let (:arena){ Arena.new("arena") }
#An arena has a name
#The arena name should be capitalized
  it "Arena should have the name capitalized" do
    expect(arena.name).to eq("Arena") 
  end 
end 
#An arena can have gladiators
#You can add a gladiator to the arena
describe "Arena and Gladiators" do 
  let (:arena){ Arena.new("arena") }
  let (:glad1) {Gladiator.new("Trident") }
  let (:glad2) {Gladiator.new("Spear") }

  it "Arena should be able to add a gladiator" do 
    expect(arena.gladiator).to be_kind_of(Array)
    expect(arena.gladiator.size).to eq(0)
    expect(arena.add_gladiator).not_to raise_error
    expect(arena.gladiator.size).to eq(1)
  end 
  it "Arena should not be able to fight without 2 gladiators"do
    expect( arena.fight(glad1, glad2) ).to match "You must have two gladiators to fight!"
    expect(arena.gladiator.size).to eq(0)

    # expect( arena.fight(glad1, glad2) ).to eq(false)
  end 
end 
#The arena should never have more than 2 gladiators in it at a time
#If there are two gladiators in the arena, you can call a fight method that will kill one of the gladiators and remove them from the arena.
describe "Arena and Gladiators" do 
  let (:arena){ Arena.new("arena") }
  let (:glad1) {Gladiator.new("Trident") }
  let (:glad2) {Gladiator.new("Spear") }
  let (:glad3) {Gladiator.new("Club") }
  context "Arena has two Gladiators" do 
    before{expect(arena.add_gladiator).not_to raise_error}
    before{expect(arena.add_gladiator).not_to raise_error}
    it "Arena should NOT create another gladiator if there are already 2" do 
      expect(arena.add_gladiator).not_to raise_error
      expect(arena.add_gladiator).to match "You already have two"
      expect(arena.gladiator.size).to eq(2)
    end
    it "Arena should be able to fight if there are 2 gladiators" do
      expect( arena.fight(glad1,glad2) ).not_to match "You must have two gladiators to fight!"
    end
  end
end 

#Winning conditions:
describe "Gladiators Fight" do
  let (:arena){ Arena.new("arena") }
  let (:glad1) {Gladiator.new("Trident") }
  let (:glad2) {Gladiator.new("Spear") }
  let (:glad3) {Gladiator.new("Club") }
#Trident beats Spear  
  it "Trident should beat Spear" do 
    expect( arena.gladiator.push(1) )
    expect( arena.gladiator.push(2) )
    expect( arena.fight(glad1, glad2) ).to eq("Gladiator 1 Wins!")
  end
#Spear beats Club
  it "Spear should beat Club" do
    expect( arena.gladiator.push(1) )
    expect( arena.gladiator.push(2) )
    expect( arena.fight(glad2, glad3) ).to eq("Gladiator 1 Wins!")
  end 
#Club beats Trident
  it "Club should beat Trident" do
    expect( arena.gladiator.push(1) )
    expect( arena.gladiator.push(2) )
    expect( arena.fight(glad1, glad3) ).to eq("Gladiator 2 Wins!")
  end 
#If the two gladiators have the same weapon, they both die.
  it "The same weapon should defeat both" do 
    expect( arena.gladiator.push(1) )
    expect( arena.gladiator.push(2) )
    expect( arena.fight(glad1, glad1) ).to eq("Both Gladiators Died!")
  end 
end 



#Bonus
#Add a method to remove gladiators from the arena by name
#Update your winning conditions so that if the gladiator named "Maximus" is in the fight, he should always win.
#Add a method to check to see if the crowd is entertained (.entertained?). The crowd is only entertained if Maximus is in the arena.
#When a fight is over, before the gladiator is killed and removed, the user should be prompted to put their thumbs up or down. If they vote down, remove the losing gladiator from the arena. If they vote up, the gladiator stays alive in the arena.


