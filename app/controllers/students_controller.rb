class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(s_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(s_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def destroy
  end

  private

  def s_params(*args)
    params.require(:student).permit(*args)
  end
end
