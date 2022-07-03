class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id, null: false
      t.integer :genre_id, null: false
      t.text :title, null: false
      t.text :body, null: false
      t.date :due_date
      t.timestamps
    end
  end
end
