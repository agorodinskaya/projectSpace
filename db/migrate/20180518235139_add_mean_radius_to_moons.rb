class AddMeanRadiusToMoons < ActiveRecord::Migration[5.2]
  def change
    add_column :moons, :mean_radius, :float
  end
end
