class SchoolClassesController < ApplicationController


    def index 
        @school_classes = SchoolClass.all 
    end 

    def show 
        @school_class = SchoolClass.find(params[:id])
    end 

    def new 
    end 

    def create 
        @school_class = SchoolClass.new(school_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end 

    private 

    def school_params(*arg)
        params.require(:school_class).permit(*arg)
    end 
end 