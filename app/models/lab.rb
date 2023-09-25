class Lab < ApplicationRecord
  has_many :scientists

  validates_presence_of :name
end