class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :title
      t.text :body
      t.integer :planet_id
      t.integer :user_id

      t.timestamps
    end
  end
end
