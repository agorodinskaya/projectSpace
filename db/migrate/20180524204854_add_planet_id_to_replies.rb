class AddPlanetIdToReplies < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :planet_id, :integer
  end
end
