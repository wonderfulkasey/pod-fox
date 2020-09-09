class AppointmentsController < ApplicationController

    def index
        @apps = Appointment.all
    end

end
