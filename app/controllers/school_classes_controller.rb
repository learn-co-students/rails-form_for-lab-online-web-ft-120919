class SchoolClassesController < ApplicationController
  def index
    @classes = SchoolClass.all
  end
  def show
    @class = SchoolClass.find(params[:id])    
  end
  def edit
    @class=SchoolClass.find(params[:id])  
  end
  def update
    @class=SchoolClass.find(params[:id])
    @class.update(strong_params)
    if @class.save
      redirect_to school_class_path(@class)      
    else
      render :edit
    end
  end

  def new
    @class = SchoolClass.new      
  end
  def create
    @class=SchoolClass.new(strong_params)
    if @class.save
      redirect_to school_class_path(@class)
    else
      render :new
    end    
  end
  
  private
  def strong_params
    params.require(:school_class).permit(:title, :room_number)    
  end
end