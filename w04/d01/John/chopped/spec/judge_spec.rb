require 'spec_helper'

describe Judge do
  subject(:judge1) { Judge.create(:name => "Harry") }

  it { should have_many(:dish_ratings) }
  it { should have_many(:dishes).through(:dish_ratings)}
  it { should validate_presence_of(:name) }

  describe "#score_dish" do
    let (:chef1) { Chef.create(:name => "Gordon")}
    let (:course1) { Course.create(:round => 1, :ingredient => "brains")}
    let (:dish1) { chef1.make_dish(course1, "Camel brain")}

    it "scores a dish" do
      judge1.score_dish(dish1, 3)
      # expect( judge1.score_dish(dish1, 3)).to eq(3)
      expect(judge1.dish_ratings[0][:score]).to eq(3)
    end
  end

end

