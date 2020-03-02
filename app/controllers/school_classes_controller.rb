

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
      @school_class = SchoolClass.create(school_class_params)
      redirect_to school_class_path(@school_class)
    end
end