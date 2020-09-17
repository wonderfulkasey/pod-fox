class Appointment < ApplicationRecord
    
    belongs_to :patients 
 #   has_many :patients, through: :doctors

end
