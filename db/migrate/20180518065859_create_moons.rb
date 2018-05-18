class CreateMoons < ActiveRecord::Migration[5.2]
  def change
    create_table :moons do |t|
      t.text :name
      t.text :description
      t.float :orbit
      t.float :diameter
      t.float :mass
      t.float :temperature
      t.float :travel_time
      t.text :image_url
      t.integer :planet_id

      t.timestamps
    end
  end
end
