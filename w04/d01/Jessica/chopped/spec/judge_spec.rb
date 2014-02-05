require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.create }
  it {should validate_presence_of(:name)}
  it "should have a name" do
    bob = Judge.create(name: "bob")
    expect(bob.name).to eq("bob")
  end
end