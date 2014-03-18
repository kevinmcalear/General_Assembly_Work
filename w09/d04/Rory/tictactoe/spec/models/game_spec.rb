require 'spec_helper'

describe Game do
  it { should ensure_inclusion_of(:winner).in_array(["x", "y", "tie"])}
end
