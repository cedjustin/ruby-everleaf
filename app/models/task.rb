class Task < ApplicationRecord
    default_scope -> { order(created_at: :desc) }
    validates :start_date, presence: true
    validates :end_date, presence: true  
    validates :status, presence: true  
end
