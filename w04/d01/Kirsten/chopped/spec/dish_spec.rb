require "spec_helper"

describe Dish do
  subject(:flounder){Dish.create}
  it {should belong_to(:chef)}
  it {should belong_to(:course)}
  it {should validate_presence_of(:name)}

  # describe "#has_ratings" do
  #   it "checks if it has 3 ratings" do
  #     expect(flounder.has_ratings).to eq(3)
  #   end
  # end

  describe "#has_ratings" do
      let(:chef){Chef.create(name: "Mike")}
      let(:course){Course.create(round: 1, ingredient: "flounder")}
      let(:flounder) {chef.make_dish(course, "Micro-emulsion of flounder")}
      let(:judge1) { Judge.create(name: "Judge Joe Brown") }
      let(:judge2) { Judge.create(name: "Judge Joe Blue") }
      let(:judge3) { Judge.create(name: "Judge Joe Beige") }
    it "checks if it has 3 ratings" do
      judge1.give_score(3,1)
      judge2.give_score(3,1)
      judge3.give_score(4,1)
      expect(flounder.has_ratings).to eq(3)
    end
  end

end