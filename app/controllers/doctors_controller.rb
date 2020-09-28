class DoctorsController < ApplicationController

    def index
      @docs = Doctor.all
    end

    def new
      @doc = Doctor.new
    end

    def show
      @doc = Doctor.find(params[:id])
    end

    def create
      @doc = Doctor.new(doc_params)

      if @doc.save
        redirect_to doctor_path(@doc)
      else  
        render 'new'
      end 

    end

    def edit 
      @doc = Doctor.find(params[:id])
    end

    def update
      @doc = Doctor.find(params[:id])

      if @doc.update(doc_params)
        redirect_to doctor_path
      else 
        render 'edit'
      end

    end 

    def destroy
      @doc = Doctor.find(params[:id])
      @doc.destroy

      redirect_to doctors_path
    end 

    private

    def doc_params
      params.require(:doctor).permit(:name)
    end

end
