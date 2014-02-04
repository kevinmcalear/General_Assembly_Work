require 'spec_helper'

describe do Course
  subject(:course) { Course.create }
  it {should validate_presence_of(:round)}
  it {should validate_presence_of(:ingredient)}
end

