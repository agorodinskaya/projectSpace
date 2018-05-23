class CreateSpaceStations < ActiveRecord::Migration[5.2]
  def change
    create_table :space_stations do |t|
      t.text :name
      t.text :image_url
      t.float :latitude
      t.float :longitude
      t.text :address

      t.timestamps
    end
  end
end
