require 'rails_helper'

RSpec.describe Scientist do
  describe "relationships" do 
    it { should belong_to :lab }
    it { should have_many :scientists_experiments }
    it { should have_many(:experiments).through(:scientists_experiments) }
  end

  describe "validations" do 
    it { should validate_presence_of :name }
    it { should validate_presence_of :specialty }
    it { should validate_presence_of :university }
  end
end