class DoctorsController < ApplicationController

    def index
    end

    def new
    end

    def show
    end

    def create
    end

    def edit 
    end

    def update
    end 

    def destroy
    end 

    private

    def app_params
      params.require(:doctor).permit(:name)
    end

end
