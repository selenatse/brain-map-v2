class Enrolled < ActiveRecord::Base
    enum status_type: [ :inactive, :active ]
    belongs_to :course
    belongs_to :student
end
