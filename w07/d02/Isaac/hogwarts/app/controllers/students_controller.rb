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
    @student = Student.create( "name" => params[:student][:name], "img_url" => params[:student][:img_url], "house_id" => sorting_hat(), "created_at" => Time.now )
    redirect_to(:index)
  end

  def sorting_hat
    houses = []
    House.all.each do |house|
      houses << house.id
    end
    return houses.sample
  end

  def update
  end

  def destroy
  end

end