class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def index
    @student = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def create
    @student = Student.create(student_params)

  end

  private

  def student_params
    params.require(:student).permit(:name, :img_url)
  end

end