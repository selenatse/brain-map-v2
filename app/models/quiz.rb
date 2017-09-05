class Quiz < ActiveRecord::Base
    enum status_type: [ :inactive, :active ]
    belongs_to :course
    has_many :questions, :dependent => :destroy
    accepts_nested_attributes_for :questions
end
