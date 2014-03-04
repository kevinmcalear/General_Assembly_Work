class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(
      name: params[:student][:name], 
      img_url: params[:student][:img_url], 
      house_id: get_house )
    redirect_to student_path(@student)
  end

  private

  def get_house
    House.all.sample.id
  end

end