class AddColumnToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :labels_ids, :integer, array: true, default: []
  end
end
