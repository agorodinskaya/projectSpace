class AddRegionIdToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :region_id, :integer
  end
end
