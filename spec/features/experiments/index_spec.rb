require "rails_helper"

RSpec.describe "Experiments Index" do 
  context "As a visitor, when I visit the experiments show page" do

    before :each do 
      @pitchblende = Experiment.create!(name: "pitchblende", objective: "uncover the mysteries of pitchblende", num_months: 8)
      @radioactivity = Experiment.create!(name: "radioactivity", objective: "what is it?", num_months: 12) 
      @something_cool = Experiment.create!(name: "something cool", objective: "something to do with stuff", num_months: 5) 
      visit experiments_path
    end
    
    it "displays the names of all experiments with a duration of > 6mo" do
      expect(page).to have_content("pitchblende")
      expect(page).to have_content("radioactivity")
      expect(page).to_not have_content("something cool")
    end
  end
end