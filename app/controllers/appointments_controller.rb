class AppointmentsController < ApplicationController

    def index
        @apps = Appointment.all
    end

    def new
      @app = Appointment.new
    end

    def show
      @app = Appointment.find(params[:id])
    end

    def create
      @app = Appointment.new(app_params)
      @app.save
      redirect_to appointment_path(@app)
    end

    def edit 
    end

    def update
    end 

    def destroy
    end 

    private

    def app_params
      params.require(:appointment).permit(:time, :date)
    end

end
