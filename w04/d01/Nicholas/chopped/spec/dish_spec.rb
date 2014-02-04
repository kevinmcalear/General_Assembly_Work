require 'spec_helper'


describe Dish do
  let(:chef) {Chef.create(name: "Joe")}
  let(:course) {Course.create(round: 2, ingredient: "Octopus")}
  let (:alfie) {Dish.create(name: "Octopus Pasta", course_id: 1, chef_id: 1)}
  
  it { should belong_to(:chef)}
  it { should belong_to(:course)}
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:course_id)}
  it { should validate_presence_of(:chef_id)}
end
