class AddLabelToAssociations < ActiveRecord::Migration[5.2]
  def change
    add_reference :associations, :label, foreign_key: true
  end
end
