class StudentsController < ApplicationController

  def new
    @student = Student.new

  end 

  def create
    sorting_hat
    params["student"]["house_id"]=@house_id
    @student = Student.create(student_params
      )

    redirect_to("/students")
  end 

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  private
  def sorting_hat
    @house = House.all
    @house_id = @house.map {|house| house.id } 
    @house_id = @house_id.sample
  end

  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end 

end