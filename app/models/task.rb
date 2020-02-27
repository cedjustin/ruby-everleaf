class Task < ApplicationRecord
    validates :start_date, presence: true
    validates :end_date, presence: true  
    validates :status, presence: true  
end
