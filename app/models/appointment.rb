class Appointment < ApplicationRecord
    
    #belongs_to :patients 
    has_many :patients, through: :doctors

    validates :time, presence: true 
    validates :date, presence: true
end
