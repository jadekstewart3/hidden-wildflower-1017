class ScientistsController < ApplicationController
  def show
    @scientist = Scientist.find(params[:id])
    @experiments = @scientist.experiments
  end
end