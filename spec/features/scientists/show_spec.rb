require "rails_helper"

RSpec.describe "Scientist Show Page" do

  let(:curie_labs) { Lab.create!(name: "Curie Laboratory") }
  let(:madam_curie) { Scientist.create!(name: "Madam Curie", specialty: "Chemistry", university: "University of Paris", lab_id: curie_labs.id) }
  let(:pitchblende) { Experiment.create!(name: "pitchblende", objective: "uncover the mysteries of pitchblende", num_months: 8) }
  let(:radioactivity) { Experiment.create!(name: "radioactivity", objective: "what is it?", num_months: 12) }

  before :each do 
    ScientistsExperiment.create!(scientist_id: madam_curie.id, experiment_id: pitchblende.id)
    ScientistsExperiment.create!(scientist_id: madam_curie.id, experiment_id: radioactivity.id)
    visit scientist_path(madam_curie)
  end

  context "As a visitor, when I visit the scientist show page" do 
    it "displays a scientists attributes" do
      save_and_open_page
      expect(page).to have_content("Madam Curie")
      expect(page).to have_content("Specialty: Chemistry")
      expect(page).to have_content("Education: University of Paris")
      expect(page).to have_content("Laboratory: Curie Laboratory")
      expect(page).to have_content("Current Experiments:")
      expect(page).to have_content("pitchblende")
      expect(page).to have_content("radioactivity")
    end
  end
end