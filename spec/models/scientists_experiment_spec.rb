require 'rails_helper'

RSpec.describe ScientistsExperiment, type: :model do
  describe "relationships" do 
    it { should belong_to :scientist }
    it { should belong_to :experiment }
  end
end
