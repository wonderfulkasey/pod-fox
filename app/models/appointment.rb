class Appointment < ApplicationRecord
    
    has_many :patients, through: :doctors

end
