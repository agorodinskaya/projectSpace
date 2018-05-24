class AddMoonIdToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :moon_id, :integer
  end
end
