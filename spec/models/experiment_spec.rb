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

  describe "model methods" do
     it "orders all experiments with a duration longer than 6 months in descending order" do
      pitchblende = Experiment.create!(name: "pitchblende", objective: "uncover the mysteries of pitchblende", num_months: 8)
      radioactivity = Experiment.create!(name: "radioactivity", objective: "what is it?", num_months: 12) 
      something_cool = Experiment.create!(name: "something cool", objective: "something to do with stuff", num_months: 5) 

      expect(Experiment.ordered_experiments).to eq(["radioactivity", "pitchblende"])
    end
  end
end
