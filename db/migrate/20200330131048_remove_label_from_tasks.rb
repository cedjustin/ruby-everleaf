class RemoveLabelFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tasks, :labels, foreign_key: true
  end
end
