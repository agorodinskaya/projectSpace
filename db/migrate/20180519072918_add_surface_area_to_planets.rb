class AddSurfaceAreaToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :surface_area, :float
  end
end
