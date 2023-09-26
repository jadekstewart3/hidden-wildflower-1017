class ScientistsExperimentsController < ApplicationController
  def destroy
    scientist = Scientist.find(params[:scientist_id])
    scientist_experiment = ScientistsExperiment.find_by(scientist_id: scientist.id, experiment_id: params[:id])
    
    redirect_to scientist_path(scientist)
    if scientist_experiment.destroy!
      flash[:success] = "Removed experiment from work load!"
    else
      flash[:error] = "Expermient not removed from work load."
    end
  end
end