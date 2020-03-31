class Label < ApplicationRecord
    has_many :associations, dependent: :destroy, foreign_key: 'label_id'
    has_many :tasks, through: :associations, source: :task
end
