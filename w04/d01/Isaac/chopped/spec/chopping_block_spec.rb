require "spec_helper"

describe ChoppingBlock do 

it { should belong_to(:course) }
it { should belong_to(:chef) }

end