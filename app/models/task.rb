class Task < ApplicationRecord
    validates :start_date, presence: true
    validates :end_date, presence: true  
    validates :status, presence: true  
    validates :priority, presence: true , numericality: { only_integer: true, greater_than: -1, less_than: 4 }
    scope :search_status, -> (status){where('status = ?',status)}
    scope :search_title, -> (title){where('title LIKE ?',"%#{title}%")}

    paginates_per 4
    has_many :associations, dependent: :destroy, foreign_key: 'task_id'
    belongs_to :user
    has_many :labels, through: :associations, source: :label
    accepts_nested_attributes_for :associations
end
