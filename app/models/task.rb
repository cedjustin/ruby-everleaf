class Task < ApplicationRecord
    validates :start_date, presence: true
    validates :end_date, presence: true  
    validates :status, presence: true  
    validates :priority, presence: true , numericality: { only_integer: true, greater_than: -1, less_than: 4 }
    validates :labels_ids, presence: true
    scope :search_status, -> (status){where('status = ?',status)}
    scope :search_title, -> (title){where('title LIKE ?',"%#{title}%")}

    paginates_per 4

    belongs_to :user
    has_many :labels
end
