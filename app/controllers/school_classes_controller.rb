

class SchoolClassesController < ApplicationController
    def index
    end
  
    def show
      @school_class = SchoolClass.find(params[:id])
    end
  
    def new
      @school_class = SchoolClass.new
    end
  
    def create
      @school_class = SchoolClass.create(school_classes_params)
      redirect_to school_classes_path(@school_class)
    end
    private
    def school_classes_params
      params.require(:school_class).permit(:title, :room_number)
    end
    
end