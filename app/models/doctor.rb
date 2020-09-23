class Doctor < ApplicationRecord
   # has_many :patients, through: :appointments

   validates :name, presence: true

end
