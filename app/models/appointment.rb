class Appointment < ApplicationRecord
    
    belongs_to :patient
    belongs_to :doctor

    #setter and getter
    def doctor_name = (name)
        self.doctor =
    end 

    validates :time, presence: true 
    validates :date, presence: true
end
