require 'rails_helper'

RSpec.describe Experiment, type: :model do
  describe "relationships" do 
    it { should have_many :scientists_experiments }
    it { should have_many(:scientists).through(:scientists_experiments) }
  end

  describe "validations" do 
    it { should validate_presence_of :name }
    it { should validate_numericality_of :num_months}
  end
end
