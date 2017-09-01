class Course < ActiveRecord::Base
    belongs_to :user
    validates :id, uniqueness: true, presence: true
    validates :name, presence: true
    validates :user_id, presence: true
    self.primary_key = :id
end
