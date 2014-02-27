class StudentsController < ApplicationController

  before_action :load_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    house = House.all.sample
    
    Student.create(
      name: params[:student][:name],
      img_url: params[:student][:img_url],
      house: house)
    redirect_to students_path
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def load_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :img_url)
  end

end