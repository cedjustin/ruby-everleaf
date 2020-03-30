class AddLabelToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :labels, foreign_key: true, array: true
  end
end
