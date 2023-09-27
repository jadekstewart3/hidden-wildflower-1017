class ExperimentsController < ApplicationController
  def index
    @experiments = Experiments.ordered_experiments
  end
end