class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.text :title
      t.text :body
      t.integer :question_id

      t.timestamps
    end
  end
end
