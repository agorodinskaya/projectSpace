class AddSurfaceGravityToMoons < ActiveRecord::Migration[5.2]
  def change
    add_column :moons, :surface_gravity, :float
  end
end
