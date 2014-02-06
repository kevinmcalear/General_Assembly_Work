require 'spec_helper'

describe DishRating do  
  subject(:dishrating){DishRating.create(:score => 2)}

  it { should validate_presence_of(:score) }

  it { should belong_to(:judge) }
  it { should belong_to(:dish)}

  
end