class Experiment < ApplicationRecord
  has_many :scientists_experiments
  has_many :scientists, through: :scientists_experiments

  validates_presence_of :name
  validates_presence_of :objective
  validates_numericality_of :num_months
end
