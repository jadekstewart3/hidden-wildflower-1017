class CreateExperiments < ActiveRecord::Migration[7.0]
  def change
    create_table :experiments do |t|
      t.string :objective
      t.integer :num_months

      t.timestamps
    end
  end
end
