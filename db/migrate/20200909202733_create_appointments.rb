class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|

        t.string :time 
        t.string :date

        t.integer :doctor_id
        t.integer :patient_id
        
      t.timestamps null: false
    end
  end
end
