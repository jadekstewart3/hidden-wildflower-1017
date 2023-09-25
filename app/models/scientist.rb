class Scientist < ApplicationRecord
  belongs_to :lab
  has_many :scientists_experiments
  has_many :experiments, through: :scientists_experiments

  validates_presence_of :name
  validates_presence_of :specialty
  validates_presence_of :university
end