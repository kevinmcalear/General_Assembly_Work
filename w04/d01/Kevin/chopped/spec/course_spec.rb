require 'spec_helper'

describe Course do
  it { should have_many(:dishes)}
  it { should validate_presence_of(:round) }
  it { should validate_presence_of(:ingredient) }
  it { should have_many(:chopping_blocks) }
  it { should have_many(:chefs).through(:chopping_blocks) }

  describe "#find_worst_dish" do
    let (:course1) { Course.create(:round => 1, :ingredient => "brains")}
    let (:chef1) { Chef.create(:name => "Jeff")}
    let (:chef2) { Chef.create(:name => "PJ")}
    let (:chef3) { Chef.create(:name => "Peter")}
    let (:judge1) { Judge.create(:name => "Tom") }
    let (:judge2) { Judge.create(:name => "Dick") }
    let (:judge3) { Judge.create(:name => "Harry") }
    let (:dish1) { chef1.make_dish(course1, "Camel brains")}
    let (:dish2) { chef2.make_dish(course1, "Dog brains")}
    let (:dish3) { chef3.make_dish(course1, "Bat brains")}

    it "gives an average score" do
      # before do
        judge1.score_dish(dish1, 2)
        judge2.score_dish(dish1, 2)
        judge3.score_dish(dish1, 2)

        judge1.score_dish(dish2, 1)
        judge2.score_dish(dish2, 1)
        judge3.score_dish(dish2, 1)

        judge1.score_dish(dish3, 3)
        judge2.score_dish(dish3, 3)
        judge3.score_dish(dish3, 3)
      # end

      expect(course1.find_worst_dish).to eq(dish2)
    end

  end

end