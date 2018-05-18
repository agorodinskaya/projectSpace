class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.text :name
      t.text :description
      t.float :orbit
      t.float :diameter
      t.float :mass
      t.float :temperature
      t.float :travel_time
      t.text :image_url

      t.timestamps
    end
  end
end
