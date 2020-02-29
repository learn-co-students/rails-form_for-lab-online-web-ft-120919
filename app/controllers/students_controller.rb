class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def show
    @student =Student.find(params[:id])
  end
  def edit
    @student=Student.find(params[:id])    
  end
  def update
    @student=Student.find(params[:id])
    @student.update(strong_params)
    @student.save
    redirect_to student_path
  end
  def new
    @student=Student.new    
  end
  def create
    @student=Student.new(strong_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end    
  end
  

  private
  def strong_params
    params.require(:student).permit(:first_name, :last_name)   
  end
end