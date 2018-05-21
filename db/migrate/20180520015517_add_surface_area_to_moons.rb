class AddSurfaceAreaToMoons < ActiveRecord::Migration[5.2]
  def change
    add_column :moons, :surface_area, :float
  end
end
