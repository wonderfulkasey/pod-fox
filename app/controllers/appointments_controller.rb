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
      
      if @app.save
        redirect_to appointment_path(@app)
      else 
        render 'new'
      end

    end

    def edit 
      @app = Appointment.find(params[:id])
    end

    def update
      @app = Appointment.find(params[:id])
      @app.update(app_params)
      redirect_to appointment_path

    end 

    def destroy
      @app = Appointment.find(params[:id])
      @app.destroy 

      redirect_to appointments_path
    end 

    private

    def app_params
      params.require(:appointment).permit(:time, :date)
    end

end
