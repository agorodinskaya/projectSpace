class AddMeanRadiusToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :mean_radius, :float
  end
end
