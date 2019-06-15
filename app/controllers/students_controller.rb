class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    # byebug
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      redirect_to @student, :notice => "Successfully Added!"
    else
      redirect_to new_student_path
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.valid?
      redirect_to @student, :notice => "Successfully Added!"
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :mod)
  end

end
