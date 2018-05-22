class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :question_id
      t.integer :user_id

      t.timestamps
    end
  end
end
