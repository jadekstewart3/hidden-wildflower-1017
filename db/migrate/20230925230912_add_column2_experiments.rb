class AddColumn2Experiments < ActiveRecord::Migration[7.0]
  def change
    add_column :experiments, :name, :string
  end
end
