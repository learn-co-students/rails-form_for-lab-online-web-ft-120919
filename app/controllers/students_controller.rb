class StudentsController < ApplicationController
  def create
    @student = Student.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    if @student.save
      redirect_to student_path(@student)
    end
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render :edit
    end
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
