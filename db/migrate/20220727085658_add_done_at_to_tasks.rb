class AddDoneAtToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :done_at, :date
  end
end
