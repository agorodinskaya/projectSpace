class AddMoonIdToReplies < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :moon_id, :integer
  end
end
