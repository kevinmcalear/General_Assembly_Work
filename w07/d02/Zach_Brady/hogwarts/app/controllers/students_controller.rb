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
      name: params[ :student ][ :name ],
      image_url: params[ :student ][ :image_url ],
      house_id: sort_for_house
     )
    redirect_to student_path(@student)
  end

  private 

  def sort_for_house
    House.all.sample.id
  end

end