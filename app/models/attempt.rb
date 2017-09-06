class Attempt < ActiveRecord::Base
    has_many :responses, :dependent => :destroy
    belongs_to :student
    belongs_to :quiz
    
    accepts_nested_attributes_for :responses
    # , :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end