class AddSurfaceGravityToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :surface_gravity, :float
  end
end
