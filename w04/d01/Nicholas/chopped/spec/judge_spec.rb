require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.create(name: "Alfred") }

  it { should validate_presence_of(:name) }

end
