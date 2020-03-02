class SchoolClassesController < ApplicationController
  def create
    @school_class = SchoolClass.new(school_class_params)
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render :new
    end
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def edit
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def update
    @school_class = SchoolClass.find_by(id: params[:id])
    @school_class.update(school_class_params)
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render :edit
    end
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
